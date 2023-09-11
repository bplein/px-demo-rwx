#!/usr/bin/env bash
BB_POD=$(kubectl get pods -l app=busybox-rwx -o name | head -n 1)
kubectl exec -ti $BB_POD -- cat /mnt/busybox-rwx/status.txt
