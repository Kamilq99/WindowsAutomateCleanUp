# PowerShell script for automatic Windows cleanup
# Run as Administrator

# Removing user temporary files
Write-Host "Removing user temporary files..."
Remove-Item -Path "$env:TEMP\*" -Force -Recurse -ErrorAction SilentlyContinue

# Removing system temporary files
Write-Host "Removing system temporary files..."
Remove-Item -Path "C:\Windows\Temp\*" -Force -Recurse -ErrorAction SilentlyContinue

# Emptying Recycle Bin
Write-Host "Emptying Recycle Bin..."
Clear-RecycleBin -Force -ErrorAction SilentlyContinue

# Removing Windows update log files
Write-Host "Removing downloaded Windows updates..."
Remove-Item -Path "C:\Windows\SoftwareDistribution\Download\*" -Force -Recurse -ErrorAction SilentlyContinue

# Clearing Windows Update cache
Write-Host "Stopping Windows Update service..."
Stop-Service wuauserv -Force -ErrorAction SilentlyContinue
Write-Host "Removing Windows Update cache files..."
Remove-Item -Path "C:\Windows\SoftwareDistribution\*" -Force -Recurse -ErrorAction SilentlyContinue
Write-Host "Starting Windows Update service..."
Start-Service wuauserv

# Cleaning Prefetch folder
Write-Host "Cleaning Prefetch folder..."
Remove-Item -Path "C:\Windows\Prefetch\*" -Force -Recurse -ErrorAction SilentlyContinue

# Running Disk Cleanup
Write-Host "Running Disk Cleanup..."
Start-Process "cleanmgr" -ArgumentList "/sagerun:1" -NoNewWindow

Write-Host "Cleanup completed!"