#docker_cmd_93.sh
img="nvcr.io/nvidia/tensorflow:18.08-py3"
#  18.11
#img="padim:0.1"


docker run --gpus all  --privileged=true   --workdir /git --name "ser_cnn"  -e DISPLAY --ipc=host -d --rm  -p 6608:4452  \
-v /raid/git/A-lightweight-network-for-SER:/git/A-lightweight-network-for-SER \
 -v /raid/git/datasets:/git/datasets \
 $img sleep infinity

docker exec -it ser_cnn /bin/bash

pip list  |grep "tensorflow"
