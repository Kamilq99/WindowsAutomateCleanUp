# PowerShell script to schedule automatic Recycle Bin cleanup
# Run as Administrator

Write-Host "Scheduling automatic Recycle Bin cleanup..."
$taskName = "EmptyRecycleBinWeekly"
$taskAction = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-Command Clear-RecycleBin -Force"
$taskTrigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Monday -At 7am
Register-ScheduledTask -TaskName $taskName -Action $taskAction -Trigger $taskTrigger -User "SYSTEM" -RunLevel Highest

Write-Host "Scheduled Recycle Bin cleanup task created!"
