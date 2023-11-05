Write-Host "`rSetting up aliases..." -NoNewline

Set-Alias -Name:"cd" -Value:"z" -Description:"change directory using zoxide" -Option:"AllScope"
Set-Alias -Name:"scoop-search-multisource.exe" -Value:"scoop-msearch" -Description:"" -Option:"None"
Set-Alias -Name:"z" -Value:"__zoxide_z" -Description:"" -Option:"AllScope"
Set-Alias -Name:"zi" -Value:"__zoxide_zi" -Description:"" -Option:"AllScope"
Set-Alias -Name:"shmd" -Value:"Show-Markdown" -Description:"" -Option:"None"
Set-Alias -Name "omp" -Value "oh-my-posh"
Set-Alias -name pipes -value pipes-rs
Set-Alias -Name time -Value Measure-Command

Write-Host "aliases ✅"