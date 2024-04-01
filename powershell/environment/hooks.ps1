<#
.##.....##..#######...#######..##....##..######.
.##.....##.##.....##.##.....##.##...##..##....##
.##.....##.##.....##.##.....##.##..##...##......
.#########.##.....##.##.....##.#####.....######.
.##.....##.##.....##.##.....##.##..##.........##
.##.....##.##.....##.##.....##.##...##..##....##
.##.....##..#######...#######..##....##..######.
#>

Write-Host "`rSetting up hooks..." -NoNewline

# scoop search - faster than default speedup
# Invoke-Expression (&scoop-search --hook)
jump shell pwsh | Out-String | Invoke-Expression
Invoke-Expression (& { (zoxide init powershell | Out-String) })


Write-Host "✅"