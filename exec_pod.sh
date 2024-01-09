#!/usr/bin/env bash
BB_POD=$(kubectl get pods -l app=busybox-rwx-px -o name | head -n 1)
kubectl exec -ti $BB_POD -- tail -f /mnt/busybox-rwx/status.txt
