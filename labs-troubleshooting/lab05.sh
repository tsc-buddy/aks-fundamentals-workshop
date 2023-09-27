#!/bin/bash

# List of node names to cordoned
NODES_TO_CORDON=("node-name-1" "node-name-2")

# Cordoning nodes
for node in "${NODES_TO_CORDON[@]}"; do
  echo "Cordoning node: $node"
  kubectl cordon "$node"
done

# Verify cordoning
echo "Verifying cordoning status..."
kubectl get nodes

# Uncomment the lines below to uncordon the nodes after verification
# for node in "${NODES_TO_CORDON[@]}"; do
#   echo "Uncordoning node: $node"
#   kubectl uncordon "$node"
# done

# Verify uncordoning
# echo "Verifying uncordoning status..."
# kubectl get nodes
