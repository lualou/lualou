```luau
local HttpService = game:GetService("HttpService")

local Table = {
    User = {
        Name = "lualou",
        Status = "unknown",
    },

    GitHub = {
        Followers = 0,
        Following = 0,

        Repositories = {
            Total = 2,
            Returned = 2,

            Top = {
                { Title = "lualou", Stars = 0, Url = "https://github.com/lualou/lualou" },
                { Title = "Luau-Discord-Bot", Stars = 0, Url = "https://github.com/lualou/Luau-Discord-Bot" },
            }
        }
    },

    File = {
        Version = "a1046c26d78fcc2493f3d29220ae5f85f690d189",
        LastUpdated = "Sat, 19 Sep 2026 10:05:53 GMT",
    },
}

print(HttpService:JSONEncode(Table))
```
<table align="center">
  <tr>
    <td align="center">
      <img src="https://github-view-counter.vercel.app/api?username=lualou&label=false&style=nobg&color=aaaaaa">
    </td>
  </tr>
</table>
