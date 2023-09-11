#!/usr/bin/env bash
BB_POD=$(kubectl get pods -l app=busybox-rwx -o jsonpath='{.items[0].metadata.name}')
kubectl exec -ti $BB_POD -- cat /mnt/busybox-rwx/status.txt
