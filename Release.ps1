
$ErrorActionPreference = 'Stop'

$desktopDir  = [Environment]::GetFolderPath('Desktop')
$exePath     = $PSScriptRoot + '\mpv.net\bin\x64\mpvnet.exe'
$versionInfo = [Diagnostics.FileVersionInfo]::GetVersionInfo($exePath)
$vsDir       = 'C:\Program Files (x86)\Microsoft Visual Studio\2019'
$msBuild     = $vsDir + '\Community\MSBuild\Current\Bin\MSBuild.exe'
$inno        = 'C:\Program Files (x86)\Inno Setup 6\ISCC.exe'
$7z          = 'C:\Program Files\7-Zip\7z.exe'

if ($versionInfo.FilePrivatePart -eq 0)
{
    & $msBuild mpv.net.sln -t:Rebuild -p:Configuration=Debug -p:Platform=x64
    if ($LastExitCode) { throw $LastExitCode }

    & $msBuild mpv.net.sln -t:Rebuild -p:Configuration=Debug -p:Platform=x86
    if ($LastExitCode) { throw $LastExitCode }

    & $inno /Darch=x64 setup.iss
    if ($LastExitCode) { throw $LastExitCode }

    & $inno /Darch=x86 setup.iss
    if ($LastExitCode) { throw $LastExitCode }

    $targetDir = $desktopDir + "\mpv.net-portable-x64-$($versionInfo.FileVersion)"
    Copy-Item .\mpv.net\bin\x64 $targetDir -Recurse -Exclude System.Management.Automation.xml

    & $7z a -t7z -mx9 "$targetDir.7z" -r "$targetDir\*"
    if ($LastExitCode) { throw $LastExitCode }

    & $7z a -tzip -mx9 "$targetDir.zip" -r "$targetDir\*"
    if ($LastExitCode) { throw $LastExitCode }

    $targetDir = $desktopDir + "\mpv.net-portable-x86-$($versionInfo.FileVersion)"
    Copy-Item .\mpv.net\bin\x86 $targetDir -Recurse -Exclude System.Management.Automation.xml

    & $7z a -t7z -mx9 "$targetDir.7z" -r "$targetDir\*"
    if ($LastExitCode) { throw $LastExitCode }

    & $7z a -tzip -mx9 "$targetDir.zip" -r "$targetDir\*"
    if ($LastExitCode) { throw $LastExitCode }
}
else
{
    & $msBuild mpv.net.sln -t:Rebuild -p:Configuration=Debug -p:Platform=x64
    if ($LastExitCode) { throw $LastExitCode }

    $targetDir = "$desktopDir\mpv.net-portable-x64-$($versionInfo.FileVersion)-beta"
    Copy-Item .\mpv.net\bin\x64 $targetDir -Recurse -Exclude System.Management.Automation.xml
    & $7z a -t7z -mx9 "$targetDir.7z" -r "$targetDir\*"
    if ($LastExitCode) { throw $LastExitCode }

    $cloudDirectories = 'C:\Users\frank\OneDrive\Public\mpv.net\',
                        'C:\Users\frank\Dropbox\Public\mpv.net\'

    foreach ($cloudDirectory in $cloudDirectories)
    {
        if (-not (Test-Path $cloudDirectory))
        {
            throw $cloudDirectory
        }

        $targetFile = $cloudDirectory + (Split-Path $targetDir -Leaf) + '.7z'

        if (Test-Path $targetFile)
        {
            throw $targetFile
        }

        Copy-Item ($targetDir + '.7z') $targetFile
        Invoke-Item $cloudDirectory
    }
}

Set-Clipboard ($versionInfo.FileVersion + "`n`n" +
    'https://github.com/stax76/mpv.net/blob/master/Changelog.md' + "`n`n" +
    'https://github.com/stax76/mpv.net#download')

Write-Host 'successfully finished' -ForegroundColor Green
