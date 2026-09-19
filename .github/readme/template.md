```luau
local HttpService = game:GetService("HttpService")

local Table = {
    User = {
        Name = "{{Profile.login}}",
        Status = "unknown",
    },

    GitHub = {
        Followers = {{Profile.followers}},
        Following = {{Profile.following}},

        Repositories = {
            Total = {{Profile.public_repos}},
            Returned = {{#Repositories}},

            Top = {
{{Top}}
            }
        }
    },

    File = {
        Version = "{{Process.env.GITHUB_SHA or "unknown"}}",
        LastUpdated = "{{os.date("!%a, %d %b %Y %H:%M:%S GMT")}}",
    },
}

print(HttpService:JSONEncode(Table))
```
<table align="center">
  <tr>
    <td align="center">
      <img src="https://github-view-counter.vercel.app/api?username={{Profile.login}}&label=false&style=nobg&color=aaaaaa">
    </td>
  </tr>
</table>
