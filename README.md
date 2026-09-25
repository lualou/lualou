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
        Version = "fa1d893a4d0cbe644e89c66bdf74e1872a717191",
        LastUpdated = "Fri, 25 Sep 2026 00:07:15 GMT",
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
