# Make sure computer is named correctly

# Make sure a static IP address is configured

# Populate Variables
$domain = "acme.com"
$domainNB = "ACME"
$password = "123abc$"
$safePass = ConvertTo-SecureString -String $password -AsPlainText -Force

# Add Domain Services
Add-WindowsFeature AD-Domain-Services

# Create New Forest
Install-ADDSForest -DomainName $domain -InstallDNS -DomainMode 7 -DomainNetbiosName $domainNB -ForestMode 7 -SafeModeAdministratorPassword $safePass
