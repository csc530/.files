function clear-line {
    param (
        [Parameter(Mandatory = $false, Position = 0)][string]$txt,
        [Parameter(Mandatory = $false, Position = 1)][int]$txtlength
    )
    if ($txt -or $txtlength) {
        $length = $txtlength ? $txtlength : $txt.Length
    }
    else {
        for ($i = 0; $i -lt $Host.UI.RawUI.CursorPosition.X; $i++) {
            Write-Host "`b" -NoNewline 
        }
        
        for ($i = 0; $i -lt $Host.UI.RawUI.CursorPosition.X; $i++) {
            Write-Host "`r " -NoNewline 
        }
    }
    $length ??= $Host.UI.RawUI.WindowSize.Width

    $spaces = ''
    for ($i = 0; $i -lt $length; $i++) {
        Write-Host "`r" -NoNewline
        $spaces += "`b"
    }
    Write-Host "`r$spaces" -NoNewline
}


# Print out a nice screenfetch
function screenfetch {	
    & cpufetch.exe
	
    $fetches = @(Get-Command -Name *neofetch*) + @(Get-Command *wfetch*) + @(Get-Command *winfetch* -All) + @(Get-Command flashfetch)
    $screenfetch = $fetches[(Get-Random -Minimum 0 -Maximum $fetches.Length)]
    if ($screenfetch.Name -eq 'winfetch.ps1') {
        screenprint	
    }
    else {
        $screenfetch.Path | Out-String | Invoke-Expression
    }

    #print git repo screenfetch
    #look for .git directory in path and parents
    $loc = Get-Item .\
    while ($loc.Parent) {
        if (Get-ChildItem -Filter .git -Force -Directory) {
            onefetch.exe
            break
        }
		
        $loc = Get-Item $loc.Parent -ErrorAction Break
        Set-Location $loc
    }
}

function screenprint {
    if ([System.Convert]::ToBoolean($(Get-Random -Minimum 0 -Maximum 2))) {
        $ascii = '-ascii'
    }
    if ([System.Convert]::ToBoolean($(Get-Random -Minimum 0 -Maximum 2))) {
        $blink = '-blink'
    }
    if ($Host.UI.RawUI.WindowSize.Width -gt 50) {
        $imgPath = Get-ChildItem -Recurse -Include *.jpg, *.png, *.jpeg, -Path D:\Pictures\ -Exclude D:\Pictures\Screenshots | Get-Random
		
        if ($Host.UI.RawUI.WindowSize.Width -gt 75) {
            $width = Get-Random -Minimum 20 -Maximum ($Host.UI.RawUI.WindowSize.Width - 29)
        }
        else {
            $width = 20
        }

        if ([System.Convert]::ToBoolean($(Get-Random -Minimum 0 -Maximum 2))) {
            $strip = '-stripansi'
            $ascii = '-ascii'
        }
		
        $img = "-image '$($imgPath.FullName)' -imgwidth $width $strip"
    }
    else {
        $img = '-noimage'
        $ascii = $null
    }
    
    "winfetch.ps1 $ascii $img $blink" | Out-String | Invoke-Expression
    Write-Host -Message "Image: $($imgPath.FullName)"
    Write-Debug -Message "Ascii: $ascii"
    Write-Debug -Message "Blink: $blink"
}