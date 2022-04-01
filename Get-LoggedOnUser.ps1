$LoggedInUsers = Get-Process -IncludeUserName | Select-Object UserName,SessionId | Where-Object {$_.UserName -like "CDHS*"} | Sort-Object SessionId -Unique
If($LoggedInUsers){
    Write-Output $LoggedInUsers
}