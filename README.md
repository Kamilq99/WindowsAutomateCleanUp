# Automation scripts to improve your Windows computer's performance

## Overview
This documentation provides a description of several PowerShell scripts designed to optimize and clean up a Windows system. Each script has a specific function to improve performance by stopping unnecessary processes, disabling unused services, clearing RAM, managing startup applications, removing system bloatware, and scheduling automatic Recycle Bin cleanup.

---

## 1️⃣ Close Unnecessary Background Processes

**Filename:** `close_processes.ps1`

**Description:**
This script terminates background processes that are not essential, helping to free up system resources.

**Key Actions:**
- Stops predefined processes such as OneDrive, Teams, and YourPhone.
- Can be customized to include additional processes.

**Usage:**
```powershell
.\close_processes.ps1
```

---

## 2️⃣ Disable Unnecessary System Services

**Filename:** `disable_services.ps1`

**Description:**
This script disables unnecessary Windows services that consume resources.

**Key Actions:**
- Stops and disables services like `SysMain` (Superfetch), `DiagTrack` (Diagnostics Tracking), and `WSearch` (Windows Search).
- Can be expanded to disable other services.

**Usage:**
```powershell
.\disable_services.ps1
```

---

## 3️⃣ Clear and Reset RAM Usage

**Filename:** `clear_ram.ps1`

**Description:**
This script clears unused memory, which can improve system performance.

**Key Actions:**
- Triggers garbage collection to free up memory.
- Refreshes system memory allocation.

**Usage:**
```powershell
.\clear_ram.ps1
```

---

## 4️⃣ Disable Unnecessary Startup Applications

**Filename:** `disable_startup_apps.ps1`

**Description:**
This script prevents unneeded applications from launching at startup, reducing boot time.

**Key Actions:**
- Identifies and disables startup applications.
- Modifies the Windows registry to prevent auto-starting apps.

**Usage:**
```powershell
.\disable_startup_apps.ps1
```

---

## 5️⃣ Remove Unnecessary System Applications

**Filename:** `remove_system_apps.ps1`

**Description:**
This script removes pre-installed system applications (bloatware) that are not required.

**Key Actions:**
- Uninstalls Xbox, Skype, and Solitaire applications.
- Can be modified to remove other unwanted apps.

**Usage:**
```powershell
.
emove_system_apps.ps1
```

---

## 6️⃣ Schedule Automatic Recycle Bin Cleanup

**Filename:** `schedule_recycle_bin_cleanup.ps1`

**Description:**
This script schedules a weekly task to automatically empty the Recycle Bin.

**Key Actions:**
- Creates a scheduled task using `Task Scheduler`.
- Configured to run every Monday at 7 AM.

**Usage:**
```powershell
.\schedule_recycle_bin_cleanup.ps1
```

---

## Notes
- **Administrator Privileges:** Most of these scripts require administrator privileges to execute successfully.
- **Customization:** You can edit each script to adjust the parameters according to your needs.
- **Execution Policy:** If you encounter script execution restrictions, run:
  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

---

## Conclusion
These PowerShell scripts help streamline Windows performance by reducing unnecessary resource consumption, optimizing startup processes, and automating system maintenance tasks. Regular use of these scripts can lead to a smoother and more responsive system.

If you have any questions or need modifications, feel free to ask! 🚀
