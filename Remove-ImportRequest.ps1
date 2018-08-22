# Remove-ImportRequest
# Copyright 2018, Dr. Matthew R. Kisow
#
# This script runs as a scheduled task and will remove any completed or
# failed import requests from the Exchange server.

# If not already loaded, load the Exchange server PowerShell modules.
if ( (Get-PSSnapin -Name *Exchange* -ErrorAction SilentlyContinue) -eq $null )
{
    Add-PSSnapin *Exchange*
}

# Remove all completed import requests.
Get-MailboxImportRequest -Status Completed | Remove-MailboxImportRequest -Confirm:$false

# Remove all failed import requests.
Get-MailboxImportRequest -Status Failed | Remove-MailboxImportRequest -Confirm:$false
