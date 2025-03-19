# PowerShell script to disable unnecessary system services
# Run as Administrator

Write-Host "Disabling unnecessary services..."
$servicesToDisable = @("SysMain", "DiagTrack", "WSearch")  # SysMain = Superfetch, WSearch = Windows Search
foreach ($service in $servicesToDisable) {
    Set-Service -Name $service -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name $service -Force -ErrorAction SilentlyContinue
}

Write-Host "Service disabling completed!"
