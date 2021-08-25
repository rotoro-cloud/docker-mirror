cat /etc/docker/daemon.json < EOF
{
    "debug": true,
    "registry-mirrors": ["https://mirror.gcr.io"],
    "insecure-registries": ["https://mirror.gcr.io"]
}
EOF


systemctl restart docker
