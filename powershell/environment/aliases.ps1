Write-Host "`rSetting up aliases..." -NoNewline

Set-Alias -Name:"scoop-search-multisource.exe" -Value:"scoop-msearch" -Description:"" -Option:"None"
Set-Alias -Name:"shmd" -Value:"Show-Markdown" -Description:"" -Option:"None"
Set-Alias -Name "omp" -Value "oh-my-posh"
Set-Alias -name pipes -value pipes-rs
Set-Alias -Name "dsf" -Value "diff-so-fancy"
Set-Alias -Name time -Value Measure-Command
Set-Alias -Name "C#" -Value csharprepl
Set-Alias -Name hl -Value hledger
Set-Alias -Name hlui -Value hledger-ui
Set-Alias -Name cd -Value z -Option AllScope

function suredo {
    gsudo !!
}

Write-Host "✅"