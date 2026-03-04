Write-Host "Enabling Advanced Auditing..."

auditpol /set /category:"Logon/Logoff" /success:enable /failure:enable
auditpol /set /category:"Object Access" /success:enable /failure:enable
auditpol /set /category:"Account Logon" /success:enable /failure:enable

gpupdate /force

Write-Host "Auditing Enabled Successfully"
