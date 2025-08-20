param(
  [string]$FirstName,
  [string]$LastName,
  [string]$Username
)

$displayName = "$FirstName $LastName"

New-ADUser -Name $displayName `
  -GivenName $FirstName -Surname $LastName `
  -SamAccountName $Username `
  -UserPrincipalName "$Username@yourdomain.local" `
  -Enabled $true -ChangePasswordAtLogon $true
