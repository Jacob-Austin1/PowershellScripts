$username = "robert.baratheon"
$password = ConvertTo-SecureString "iamthekingoftheworld" -AsPlainText -Force
(GetDomainPolicy).systemaccess -Credential $Credential
