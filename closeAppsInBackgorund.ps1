# PowerShell script to close unnecessary background processes
# Run as Administrator

Write-Host "Stopping unnecessary background processes..."
$processesToKill = @("OneDrive", "Teams", "YourPhone")  # Add other unnecessary apps
foreach ($process in $processesToKill) {
    Stop-Process -Name $process -Force -ErrorAction SilentlyContinue
}

Write-Host "Process termination completed!"