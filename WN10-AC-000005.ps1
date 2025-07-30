<#
.SYNOPSIS
    Windows 10 account lockout duration must be configured to 15 minutes or greater.

.NOTES
    Author          : Josh Madakor
    LinkedIn        : linkedin.com/in/joshmadakor/
    GitHub          : github.com/joshmadakor1
    Date Created    : 2024-09-09
    Last Modified   : 2024-09-09
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000005 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AC-000005).ps1 
#>

# # Run as Administrator

Write-Host "Setting Account Lockout Duration to 15 minutes..."
net accounts /lockoutduration:15

Write-Host "`nUpdated Account Lockout Policy:"
net accounts
