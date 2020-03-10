# This script gets the Account SKUs from Office 365
# and writes them to the Application Event Log

$Credential=get-credential
Connect-MsolService –Credential $Credential
$mylogs = Get-MsolAccountSku
foreach($row in $mylogs)
{
    $message = $row
    Write-EventLog -LogName "Application" -EntryType "Information" -Message $message -Source "Script" -EventId '7890' 
}