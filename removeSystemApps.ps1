# PowerShell script to remove unnecessary system applications
# Run as Administrator

Write-Host "Removing unnecessary system apps..."
Get-AppxPackage *xbox* | Remove-AppxPackage
Get-AppxPackage *skype* | Remove-AppxPackage
Get-AppxPackage *solitaire* | Remove-AppxPackage

Write-Host "System apps removal completed!"
