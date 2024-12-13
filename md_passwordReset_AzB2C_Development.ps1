# Import required modules
Import-Module Microsoft.Graph
Import-Module Microsoft.Graph.Users

# Set maximum function count
$maximumfunctioncount = '32768'

# Connect to Microsoft Graph
Connect-MgGraph -TenantId 6dbc69a0-8181-4768-9475-308764a997e7 -Scope User.ReadWrite,User.ReadWrite.All,Directory.ReadWrite.All,Directory.AccessAsUser.All

# Specify the user ID (Object ID)
#$userID = '040ba010-798c-4483-abae-e93f0b09a13e'
$userID = '58440feb-5ef6-48d4-b3c9-e2372dee733f'

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