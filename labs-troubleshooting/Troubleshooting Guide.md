# Troubleshooting Guide

## Lab One: Pod Issues

You have recently done a release of a new ingress controller, NGINX, and nothing is coming online. Investigate the issues and discuss where the problems are. This lab is to be done solely through the Azure UI or kubectl.

- 1: Run the lab01-deployment.yaml
- 2: Inspect the status and begin troubleshooting.
- 3: Make the appropriate changes to your deployment yaml
- 4: Validate them by deploying and checking status

## Lab Two: Compute Resource issues

You have fixed the issue from lab one, but now someone has introduced another problem, causing the pod to not be ready.

- 1: Run the lab02-deployment.yaml
- 2: Review logs from the pod

## Lab Three: Issue with YAML files and endpoints

A new application and deployment yaml has been created, but its not finished. It should deploy a service and pod. The pod needs 3 replicas. Complete the file and deploy a working version of NGINX, add your running screenshot to the chat. 

- 1: Run the lab03-deployment.yaml
- 2: Connect to your app over the internet successfully

## Lab Four: Create a job deployment and retrieve the logs

You have picked up a backlog item to decom your automation VM and need to migrate a script to run in a container as a job on K8s.  

- 1: Run the lab04-deployment.yaml
- 2: Retrieve the status of the job
- 3: View Job Log output

## Lab Five: Create a job deployment and retrieve the logs

This lab will simulate some characteristics of cordon and maintenance.

- 1: get the names of your user nodes 
- 2: Update lab05.sh, line four with the name of your one of your nodes from the user pool.
- 3: Execute lab05.sh
- 4: open a tab with the azure container insights view open, live stream the metrics
- 4: Deploy lab05-deployment.yaml
- 5: look to see where the pods have ended up
- 6: Describe nodes again to view the status 
- 7: Uncordon the node and drain the other.

## Lab Six: Taints

DO NOT delete the lab05 deployment before running this.

- 1: execute the following twice for each system node: kubectl taint nodes <NAME OF SYSTEM NODE> node-role.kubernetes.io/system=true:NoSchedule
- 2: Deploy lab06-deployment.yaml
- 3: See status of pods
- 4: Explore the issues with the commands you have learnt over previous labs
    - Use insights to explore stats
    - Look at nodes, pod errors - look at utilization etc.
    - Can you spot why the node wont use all its capacity?

