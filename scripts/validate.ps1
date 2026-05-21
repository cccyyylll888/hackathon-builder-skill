$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $PSScriptRoot
$SkillPath = Join-Path $RepoRoot "skills\hackathon-builder"
$QuickValidate = Join-Path $env:USERPROFILE ".codex\skills\.system\skill-creator\scripts\quick_validate.py"

if (-not (Test-Path $SkillPath)) {
    throw "Skill path not found: $SkillPath"
}

if (-not (Test-Path $QuickValidate)) {
    throw "quick_validate.py not found: $QuickValidate"
}

python $QuickValidate $SkillPath

$Required = @(
    "SKILL.md",
    "agents\openai.yaml",
    "references\requirement-rubric.md",
    "references\sprint-playbook.md",
    "references\ideation-score.md",
    "references\technical-doc-build.md",
    "references\demo-poster-pitch.md",
    "references\github-packaging.md",
    "assets\templates\idea-scorecard.md",
    "assets\templates\prd-mvp-brief.md",
    "assets\templates\technical-document.md",
    "assets\templates\architecture-notes.md",
    "assets\templates\demo-script.md",
    "assets\templates\poster-brief.md",
    "assets\templates\roadshow-script-qa.md",
    "assets\templates\app-starter-guidance.md",
    "scripts\rank_ideas.py"
)

foreach ($Relative in $Required) {
    $Path = Join-Path $SkillPath $Relative
    if (-not (Test-Path $Path)) {
        throw "Required file missing: $Relative"
    }
}

Write-Host "All required hackathon-builder files are present."
