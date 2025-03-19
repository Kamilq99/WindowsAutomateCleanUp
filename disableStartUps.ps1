# PowerShell script to disable unnecessary startup applications
# Run as Administrator

Write-Host "Disabling startup applications..."
$startupApps = Get-CimInstance Win32_StartupCommand
$startupApps | ForEach-Object {
    Write-Host "Disabling:" $_.Name
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name $_.Name -Value "" -ErrorAction SilentlyContinue
}

Write-Host "Startup applications disabled!"
