#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\catppuccin_mocha.omp.json"| Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\negligible.omp.json" | Invoke-Expression

# detect which terminal they're using
RandomizeTerminalScheme
RandomizeTerminalScheme -preview