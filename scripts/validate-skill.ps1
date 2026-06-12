$ErrorActionPreference = "Stop"
$skillPath = Join-Path $PSScriptRoot "..\skill\sketchnote-creator"
$skillFile = Join-Path $skillPath "SKILL.md"
if (!(Test-Path $skillFile)) { throw "Missing SKILL.md" }
$content = Get-Content $skillFile -Raw
if ($content -notmatch "(?s)^---\s*\nname:\s*sketchnote-creator") { throw "Missing or invalid skill name frontmatter" }
if ($content -notmatch "description:") { throw "Missing description frontmatter" }
$required = @("assets", "references", "agents")
foreach ($name in $required) {
  if (!(Test-Path (Join-Path $skillPath $name))) { throw "Missing folder: $name" }
}
Write-Host "Skill validation passed: $skillPath"
