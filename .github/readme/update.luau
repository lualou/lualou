local Process = require("@lune/process")
local Serde = require("@lune/serde")
local Net = require("@lune/net")
local Fs = require("@lune/fs")

local Variables = setmetatable({ Process = Process }, { __index = getfenv() })
local Username = Process.env.GITHUB_REPOSITORY:match("^([^/]+)/")
local Count = 5

local function Request(Url)
    local Response = Net.request({
        url = Url,
        method = "GET",
        
        headers = {
            ["Accept"] = "application/vnd.github+json",
            ["Authorization"] = "Bearer " .. assert(Process.env.GITHUB_TOKEN),
            ["X-GitHub-Api-Version"] = "2022-11-28",
            ["User-Agent"] = "action",
        },
    })

    assert(Response.statusCode == 200, Response.body)
    return Serde.decode("json", Response.body)
end

Variables.Profile = Request(
    "https://api.github.com/users/" .. Username
)

Variables.Repositories = Request(
    "https://api.github.com/users/" .. Username .. "/repos?per_page=100"
)

table.sort(Variables.Repositories, function(A, B)
    if A.stargazers_count == B.stargazers_count then
        return A.name:lower() < B.name:lower()
    end

    return A.stargazers_count > B.stargazers_count
end)

Variables.Top = table.concat((function()
    local Top = {}

    for Rank = 1, math.min(Count, #Variables.Repositories) do
        local Repository = Variables.Repositories[Rank]

        Top[#Top + 1] = string.format(
            "                { Title = %q, Stars = %d, Url = %q },",
            Repository.name,
            Repository.stargazers_count,
            Repository.html_url
        )
    end

    return Top
end)(), "\n")

local function Render(Template)
    return Template:gsub("{{(.-)}}", function(Expression)
        local Chunk = assert(loadstring("return " .. Expression))

        setfenv(Chunk, Variables)
        return tostring(Chunk())
    end)
end

local Template = Fs.readFile(".github/readme/template.md")
local README = Render(Template)

Fs.writeFile("README.md", README)
