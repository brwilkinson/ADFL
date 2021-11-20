## Azure Deployment Framework Light
### == An Azure Bicep Project ==

#### Azure Deployment Framework, was build for Enterprise Customers.
- It was complex to setup, because it was designed with scale and multi environments in mind.
- ADF Light was created to simplify the setup of the same Azure Infrastructure.
    - Get started building 1 environment easily.


**Instructions**

1) Fork the Repo
2) Clone your Repo
`gh repo clone <yourRepo>/ADFL`
3) Code .\ADFL
4) Ctrl+J to Open PowerShell in Terminal
5) Cd into Repo Base Directory if you are not already there.
6) Execute the `deploy.ps1`

```powershell
# Option 1. Execute all pre-req steps, plus run the deployment
. .\deploy.ps1 -orgName <yourOrgName> -location centralus -RunDeployment
# E.g.
. .\deploy.ps1 -orgName CAE -location centralus -RunDeployment

# Option 2. Execute all pre-req steps, only
# That way you can execute the GitHub workflow instead
. .\deploy.ps1 -orgName <yourOrgName> -location centralus
# E.g.
. .\deploy.ps1 -orgName CAE -location centralus
```

**Things to Note**
- YourOrgName should be 3 Characters e.g. CAE
    - This will ensure a unique deployment Name is used
    - This will be used as part of all resource names in the deployment
    - This will also be used as part of the Resource Group Name.
    - This will be used for part of the Storage Account Name
- Your location must match and Azure Region Name
- You should be signed into your Subscription prior to running.
- This process creates:
    - A Resource Group
    - A Storage Account
    - A Service Principal
    - A GitHub Secret
    - A Role assignment for the Service principal as Owner on your subscription
    - A Role assignment for the Service principal on the Storage Account for data access
    - A Role assignment for your user account on the Storage Account for data access