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

    $fetches = @(Get-Command -Name *neofetch*) + @(Get-Command *wfetch*) + @(Get-Command *winfetch* -All) + @(Get-Command flashfetch) + @(Get-Command macchina.exe)
    $screenfetch = $fetches[(Get-Random -Minimum 0 -Maximum $fetches.Length)]
    if ($screenfetch.Name -eq 'winfetch.ps1') {
        screenprint
    }
    else {
        $screenfetch.Path | Out-String | Invoke-Expression
    }

    #print git repo screenfetch
    #look for .git directory in path and parents
    $loc = Get-Item . -Force
    $orgLoc = Get-Location -Verbose
    while ($loc.Parent) {
        # save current directory to stack
        Push-Location -Path $loc -StackName onefetch
        # look for .git directory
        if (Get-ChildItem -Filter .git -Force -Directory) {
            onefetch.exe
            break
        }
        # move up one level
        $loc = Get-Item $loc.Parent -ErrorAction Break
    }
    #restore current directory to host process
    Set-Location -Path $orgLoc
}

function screenprint {
    if ([System.Convert]::ToBoolean($(Get-Random -Minimum 0 -Maximum 2))) {
        $ascii = '-ascii'
    }
    if ([System.Convert]::ToBoolean($(Get-Random -Minimum 0 -Maximum 2))) {
        $blink = '-blink'
    }
    if ($Host.UI.RawUI.WindowSize.Width -gt 50) {
        $imgDir = "${env:USERPROFILE}\Pictures\", "${env:USERPROFILE}\.config\assets\"
        $imgPath = Get-ChildItem -Recurse -Include *.jpg, *.png, *.jpeg, -Path $imgDir -Exclude "$imgDir\Screenshots" | Get-Random

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

<#
.SYNOPSIS
    Remove extension from file name
.DESCRIPTION
    Remove extension from file name
.EXAMPLE
    remove-extension -file 'test.ps1'
.NOTES
    Author: Christofer Cousins
.LINK
    https://github.com/csc530/.files
#>
function Remove-Extension {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'low', PositionalBinding = $true)]
    param (
        [Parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $true)]
        [string] $fileName
    )
    if ($PSCmdlet.ShouldProcess("$fileName")) {
        $terminator = $fileName.LastIndexOf('.')
        return $fileName.Substring(0, $terminator -gt 0 ? $terminator : $fileName.Length)
    }
}

<#
.SYNOPSIS
    list globally installed npm packages
.DESCRIPTION
    lists globally installed npm packages on a newline
.NOTES
    Information or caveats about the function e.g. 'This function is not supported in Linux'
.LINK
    https://github.com/csc530/.files
.EXAMPLE
    Export-NpmPackages
#>
function Export-NpmPackages([switch]$local, [switch]$IncludeVersion) {
    $npm = Get-Command npm
    if ($npm) {
        $dirSeparator = [IO.Path]::DirectorySeparatorChar
        $regex = "(?<=node_modules$([regex]::Escape($dirSeparator))).*"
        return & $npm list -gp --depth=0 | Select-String $regex | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value
    }
    else {
        Write-Host 'npm not found' -ForegroundColor Red
    }
}

function Update-Packages {
    [CmdletBinding()]
    param ()

    begin {}
    process {
        scoop update '*'
        npm update --global --force
        gsudo winget update --all --accept-source-agreements --accept-source-agreements
    }
    end {}
}

$functions = Get-Item $PSScriptRoot\*.ps1
foreach ($function in $functions) {
    . $function
}


Export-ModuleMember -Function @('compile',
    'Update-Packages',
    'Export-NpmPackages',
    'Remove-Extension',
    'Screenprint',
    'screenfetch',
    'Get-WindowsTerminalSettingsPath',
    'Get-WindowsTerminalSettings',
    'Get-VincentTheme',
    'Add-VincentTheme',
    'RandomizeTerminalScheme',
    'Backup-System',
    'Restore-System',
    'restore',
    'Set-WindowsTerminalScheme',
    'Get-WindowsTerminalScheme'
)