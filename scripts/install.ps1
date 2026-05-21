param(
    [string]$Destination = "$env:USERPROFILE\.codex\skills\hackathon-builder",
    [switch]$Force,
    [switch]$DryRun
)

$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $PSScriptRoot
$Source = Join-Path $RepoRoot "skills\hackathon-builder"

if (-not (Test-Path $Source)) {
    throw "Source skill not found: $Source"
}

Write-Host "Source: $Source"
Write-Host "Destination: $Destination"

if ($DryRun) {
    Write-Host "Dry run only. No files copied."
    exit 0
}

if (Test-Path $Destination) {
    if (-not $Force) {
        throw "Destination already exists. Re-run with -Force to replace it."
    }
    Remove-Item -LiteralPath $Destination -Recurse -Force
}

$Parent = Split-Path -Parent $Destination
New-Item -ItemType Directory -Force -Path $Parent | Out-Null
Copy-Item -Path $Source -Destination $Destination -Recurse -Force

Write-Host "Installed hackathon-builder skill."
