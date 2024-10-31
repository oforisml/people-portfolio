#!/bin/bash

kubectl -n argo get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
echo ""
kubectl port-forward svc/argocd-server -n argo 8080:443  || kubectl port-forward svc/argocd-server -n argo 8080:80