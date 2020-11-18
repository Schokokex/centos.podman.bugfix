podman unshare cat /proc/self/uid_map
#         0       1000          1

# ... switch to root

sudo chmod u+s $(which newuidmap)
sudo chmod u+s $(which newgidmap)

# ... switch back to regular user here

podman system migrate
podman unshare cat /proc/self/uid_map
#         0       1000          1
#         1     100000      65536
