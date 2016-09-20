
docker service create --name transmission --replicas 1 --mount type=bind,source=/mnt/nfs1,target=/mnt/nfs1,readonly=false --mount type=bind,source=/mnt/nfs2,target=/mnt/nfs2,readonly=false -p 9091:9091 generalaardvark/rpi-transmission:2.92

# rpi-picore-transmission
