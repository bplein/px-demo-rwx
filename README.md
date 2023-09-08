# px-demo-rwx
 A quick and dirty demo of Portworx sharedv4 service volumes

 Apply `rwx-csi.yaml` to a namespace of your choice. It will create:
 
 * A storageclass using Portworx sharedv4 capabilities.
 * A PVC using that sharedv4 storageclass
 * A busybox deployment with 3 replicas, all mounting the pvc on `/mnt/busybox`

 The busybox deployment, when run, echos its pod name and date to `/mnt/busybox/status.txt`. You can exec into any pod and see that all 3 pods have written to the file. 
