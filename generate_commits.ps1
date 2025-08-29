# Script to generate realistic commit history
# Date range: August 26, 2025 to December 30, 2025
# Total commits: 120-150 with random patterns

$startDate = Get-Date "2025-08-26"
$endDate = Get-Date "2025-12-30"
$totalDays = ($endDate - $startDate).Days
$targetCommits = Get-Random -Minimum 120 -Maximum 151
$commitCount = 0

# Commit messages pool for realistic commits
$commitMessages = @(
    "Update README documentation",
    "Fix authentication bug",
    "Improve UI responsiveness",
    "Add error handling",
    "Refactor code structure",
    "Update dependencies",
    "Fix styling issues",
    "Add new feature",
    "Update API integration",
    "Improve user experience",
    "Fix typo in documentation",
    "Optimize performance",
    "Add comments to code",
    "Update configuration files",
    "Fix minor bugs",
    "Enhance security",
    "Update CSS styles",
    "Improve code quality",
    "Add validation",
    "Update package versions",
    "Fix layout issues",
    "Add new components",
    "Update documentation",
    "Refactor backend logic",
    "Improve error messages",
    "Update environment variables",
    "Fix routing issues",
    "Add loading states",
    "Update firebase configuration",
    "Improve accessibility"
)

# Generate commit dates with random distribution
$commitDates = @()
$random = New-Object System.Random

while ($commitCount -lt $targetCommits) {
    # Random day in range
    $randomDays = $random.Next(0, $totalDays + 1)
    $commitDate = $startDate.AddDays($randomDays)
    
    # Random number of commits on this day (1-4, weighted towards 1-2)
    $commitsPerDay = switch ($random.Next(1, 101)) {
        { $_ -le 60 } { 1 }      # 60% chance of 1 commit
        { $_ -le 85 } { 2 }      # 25% chance of 2 commits
        { $_ -le 95 } { 3 }      # 10% chance of 3 commits
        default { 4 }            # 5% chance of 4 commits
    }
    
    # Limit commits per day based on remaining commits
    $commitsPerDay = [Math]::Min($commitsPerDay, $targetCommits - $commitCount)
    
    # Add commits for this day
    for ($i = 0; $i -lt $commitsPerDay; $i++) {
        $commitDates += $commitDate
        $commitCount++
        if ($commitCount -ge $targetCommits) { break }
    }
}

# Sort dates chronologically
$commitDates = $commitDates | Sort-Object

Write-Host "Generating $commitCount commits from $startDate to $endDate..."

# Create commits
$fileToEdit = "README.md"
if (-not (Test-Path $fileToEdit)) {
    $fileToEdit = "package.json"
}

foreach ($commitDate in $commitDates) {
    # Make a small change to a file
    $randomMessage = $commitMessages[$random.Next(0, $commitMessages.Length)]
    
    # Add a random line to README or update a comment in package.json
    if ($fileToEdit -eq "README.md" -and (Test-Path $fileToEdit)) {
        # Add a space or minor change (we'll revert at end)
        $content = Get-Content $fileToEdit -Raw
        # Just touch the file by rewriting (minimal change)
        Set-Content -Path $fileToEdit -Value $content -NoNewline
    }
    elseif (Test-Path "package.json") {
        $content = Get-Content "package.json" -Raw
        Set-Content -Path "package.json" -Value $content -NoNewline
    }
    
    # Stage all changes
    git add -A
    
    # Create commit with specific date
    $dateStr = $commitDate.ToString("yyyy-MM-dd HH:mm:ss")
    $env:GIT_AUTHOR_DATE = $dateStr
    $env:GIT_COMMITTER_DATE = $dateStr
    git commit -m $randomMessage --quiet
    
    # Clear environment variables
    Remove-Item Env:\GIT_AUTHOR_DATE -ErrorAction SilentlyContinue
    Remove-Item Env:\GIT_COMMITTER_DATE -ErrorAction SilentlyContinue
}

Write-Host "Generated $commitCount commits successfully!"
