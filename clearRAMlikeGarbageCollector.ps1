# PowerShell script to clear and reset RAM usage
# Run as Administrator

Write-Host "Clearing RAM..."
Clear-Host
[System.GC]::Collect()
[System.GC]::WaitForPendingFinalizers()

Write-Host "RAM cleanup completed!"
