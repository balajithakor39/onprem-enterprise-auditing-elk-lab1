$folder="D:\SharedData"

icacls $folder /grant "Domain Users:(OI)(CI)M"

$audit = New-Object System.Security.AccessControl.FileSystemAuditRule(
"Everyone","FullControl","ContainerInherit,ObjectInherit","None","Success")

$acl = Get-Acl $folder
$acl.AddAuditRule($audit)
Set-Acl $folder $acl

Write-Host "Folder auditing configured"
