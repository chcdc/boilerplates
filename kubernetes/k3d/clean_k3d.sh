#!/bin/bash

echo -e "\n ============"
echo -e "\n = Delete Local ="
echo -e "\n ============"
k3d cluster delete local
sleep 5
echo -e "\n ============"
echo -e "\n = Delete kubectl configs local ="
echo -e "\n ============"
kubectl config delete-cluster local
kubectl config delete-context local
kubectl config get-contexts
