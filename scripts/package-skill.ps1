$ErrorActionPreference = "Stop"
$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$dist = Join-Path $root "dist"
$zip = Join-Path $dist "sketchnote-creator-skill.zip"
if (!(Test-Path $dist)) { New-Item -ItemType Directory -Path $dist | Out-Null }
if (Test-Path $zip) { Remove-Item $zip }
Compress-Archive -Path (Join-Path $root "skill\sketchnote-creator") -DestinationPath $zip
Write-Host "Created $zip"
