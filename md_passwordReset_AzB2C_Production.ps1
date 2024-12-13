# Import required modules
Import-Module Microsoft.Graph
Import-Module Microsoft.Graph.Users

# Set maximum function count
$maximumfunctioncount = '32768'

# Connect to Microsoft Graph
Connect-MgGraph -TenantId 9e8cdac6-2304-4e98-9122-d5cf3721e69a -Scope User.ReadWrite,User.ReadWrite.All,Directory.ReadWrite.All,Directory.AccessAsUser.All

# Specify the user ID (Object ID)
#$userID = '040ba010-798c-4483-abae-e93f0b09a13e'
$userID = '72c1709c-4a07-48b5-b039-03cc92efc6bc'

# Define parameters for updating the user
$params = @{
    passwordProfile = @{
        forceChangePasswordNextSignIn = $false
        password = "November@2024" # Replace with a secure password
    }
}

# Update the user
Update-MgUser -UserId $userID -BodyParameter $params

# Disconnect from Microsoft Graph
Disconnect-MgGraph