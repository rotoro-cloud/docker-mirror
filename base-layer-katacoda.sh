if grep registry-mirrors /etc/docker/daemon.json | grep -q docker-registry-mirror.katacoda.com ; 
then 
  sed -i 's@http://docker-registry-mirror.katacoda.com@https://mirror.gcr.io@g' /etc/docker/daemon.json;
else
  sed -i '2i \    "registry-mirrors\": [\"https://mirror.gcr.io\"],' /etc/docker/daemon.json ; 
fi
systemctl restart docker
