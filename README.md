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
        Version = "aa739bc8b1f672be38b9f8fbb1bb08b2561aa9ac",
        LastUpdated = "Tue, 06 Oct 2026 00:07:58 GMT",
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
