<#
..######...#######..##.....##.########..##.......########.########.########.########...######.
.##....##.##.....##.###...###.##.....##.##.......##..........##....##.......##.....##.##....##
.##.......##.....##.####.####.##.....##.##.......##..........##....##.......##.....##.##......
.##.......##.....##.##.###.##.########..##.......######......##....######...########...######.
.##.......##.....##.##.....##.##........##.......##..........##....##.......##...##.........##
.##....##.##.....##.##.....##.##........##.......##..........##....##.......##....##..##....##
..######...#######..##.....##.##........########.########....##....########.##.....##..######.
#>

Write-Information "`rSetting up completers..."

# volta completions: javascript tool manager
(& volta completions powershell) | Out-String | Invoke-Expression
# my beatful markdown viewer
glow completion powershell | Out-String | Invoke-Expression
# terminal prompt themeP
oh-my-posh.exe completion powershell | Out-String | Invoke-Expression
# 1password
op completion powershell | Out-String | Invoke-Expression

function Mount-carapace-Completers {
    Set-PSReadLineOption -Colors @{ 'Selection' = "`e[7m" }
    Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
    $apps = @()
    Get-Command -CommandType Application, Script, ExternalScript | ForEach-Object {
        $apps += remove-extension $_.Name
    }
    # $apps += Get-Command -All -CommandType Function, Cmdlet | Select-Object -Property Name | ForEach-Object { $_.Name }
    # $apps += Get-Alias | Select-Object Name | ForEach-Object { $_.Name }


    [System.Collections.Generic.List[string]]$carapace = carapace.exe --list | Get-Random -Shuffle
    for ($i = 0; $i -lt $carapace.Count; $i++) {
        $cmd = $carapace[$i].Split()[0]
        if ($apps -notcontains $cmd) {
            $skipped++
            continue
        }
        $fullcomplete = lazycomplete $cmd "carapace $cmd" | Out-String
        # $percentComplete = ($i / ($carapace.Count)) * 100
        # Write-Progress -Activity "Setting up $cmd completer" -Status "$percentComplete% complete:" -PercentComplete $percentComplete
    }
    # Write-Progress -Activity "Setting up $cmd completer" -Status "$percentComplete% complete:" -PercentComplete $percentComplete -Completed
    # Write-Host "$($carapace.Count - $skipped) Carapace completions loaded" -ForegroundColor Green

    $fullcomplete | Invoke-Expression
}

Write-Information "`finished setting up completers"