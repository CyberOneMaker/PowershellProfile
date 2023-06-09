#Rename the shell
$Shell = $Host.UI.RawUI
$Shell.WindowTitle="The CyberRange..."

#Show a custom message
Write-Host "Welcome $env:Username"

$tmp = $ProgressPreference
$ProgressPreference = "SilentlyContinue"
$computerInfo = Get-ComputerInfo
$ProgressPreference = $tmp
Write-Host "Operating system: $($computerInfo.OsArchitecture) $($computerInfo.OsName) version $($computerInfo.OsVersion)"
Write-Host "PowerShell version: $($PSVersionTable.PSVersion)"


Set-Location "C:\Users\Klyde.Whitman\OneDrive - USDA\Documents\PowerShell\"
Set-Alias ll Get-ChildItem
function prompt {
    $host.ui.RawUI.WindowTitle = $pwd.Path
    Write-Host "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) ($($ExecutionContext.SessionState.LanguageMode.ToString()))"
}
function prompt {
    $host.ui.RawUI.WindowTitle = $pwd.Path
    $date = Get-Date -Format 'MM/dd/yyyy hh:mm:ss tt'
    Write-Host "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) ($($ExecutionContext.SessionState.LanguageMode.ToString())) [$date]"
}
winget upgrade
