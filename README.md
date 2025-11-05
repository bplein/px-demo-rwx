# px-demo-rwx
 A quick and dirty demo of various RWX volumes with Portworx.

 There are 3 YAML files that have complete storageclass and deployment code to create a RWX volume, as follows:

 * `rwx-fa-file.yaml` Uses an existing FA-File filesystem to create a PVC. (PX-Enterprise, PX-CSI)
 * `rwx-fbda.yaml` Uses an existing FlashBlade token/configuration to create a PVC (PX-Enterprise, PX-CSI)
 * `rwx-sharedv4.yaml` Uses Portworx SharedV4 Service Volume to create a PVC (PX-Enterprise only)

 Apply one of the above to a namespace of your choice. It will create:
 
 * A storageclass using the appropriate storage.
 * A PVC using that storageclass
 * A busybox deployment with 3 replicas, all mounting the pvc on `/mnt/busybox`

 The busybox deployment, when run, echos its pod name and date to `/mnt/busybox/$(hostname)-status.txt`. You can exec into any pod and see that all 3 pods have written to their unique files. 

 A quick and dirty script called `exec_pod.sh` will exec into one of the pods and list the directory, allowing you to see that all 3 files are updating size and timestamp.
