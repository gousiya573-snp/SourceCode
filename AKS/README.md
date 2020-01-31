# AKS-Cluster creation Using Terraform

Make sure to place your client_id and client_secret in variables.tf before terraform apply

# For cleint_id and client_secret:
-->> az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/your_subscription_id" --output json     #from your cli
output is similar to the below one:
Retrying role assignment creation: 1/36
Retrying role assignment creation: 2/36
{
  "appId": "27db8125-42ce-471b-8059-4a8a926ec8d0",    #client_Id
  "displayName": "azure-cli-2019-08-16-14-00-38",
  "name": "http://azure-cli-2019-08-16-14-00-38",
  "password": "97e9ae2b-f86c-4a2d-88dd-59e7984727bd",  #client_secret
  "tenant": "f5347791-9811-4fca-968f-a4d51cc0a6b5"
}

# Now place these credentials in variables.tf:
variable "client_id" { default = "27db8125-42ce-471b-8059-4a8a926ec8d0" }
variable "client_secret" { default = "97e9ae2b-f86c-4a2d-88dd-59e7984727bd" }

