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
        Version = "eff83798cd89f40458830a46d6c5e3fc23c7c792",
        LastUpdated = "Sun, 15 Nov 2026 04:02:07 GMT",
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
