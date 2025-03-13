<#
.SYNOPSIS
   This PowerShell script modifies the Windows Registry to disable the lock screen camera feature.

.NOTES
    Author          : Josh Madakor
    LinkedIn        : linkedin.com/in/joshmadakor/
    GitHub          : github.com/joshmadakor1
    Date Created    : 2024-09-09
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000005

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> WN10-CC-000005.ps1 
#>

# Define the registry path and key value
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"
$regName = "NoLockScreenCamera"
$regValue = 1

# Check if the registry path exists, create it if not
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force
}

# Set the registry key value
Set-ItemProperty -Path $regPath -Name $regName -Value $regValue
