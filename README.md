# Azure Kubernetes Fundamentals Wworkshop

## Overview

This repo contains information and artefacts for a fundamentals workshop on Azure Kubernetes Services. It will cover topics such as Kubernetes concepts, insights to Azure Kubernetes Services, Cluster Management and Operations, Deployments & operational troubleshooting. 

## Prerequisites 

Ensure you have the following installed.

- Visual Studio Code
- Azure CLI / Azure Powershell
- Bicep Tools
- Kubectl

<br>

## Day One - Deploying a cluster

Ensure the pre-reqs are all met. From there complete the following steps:

Login to Azure
```text
    az login
```

Confirm and/or set the correct context
```text
    az account show / az account set <subscription>
```

Create a resource group to deploy into
```text
    az group create -n aks-workshop -l 
```
Edit the main.bicepparam file, line 5, provide your name or initials
```text
    param dnsPrefix = 'aks-<YOURNAME>'
```

Ensure you are in the correct directory, deploy the bicep code
```text
    az deployment group create --resource-group <YOUR-RG-NAME> --template-file main.bicep --parameters main.bicepparam --name aks-deploy
```