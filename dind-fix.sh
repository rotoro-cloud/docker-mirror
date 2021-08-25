cat  << EOF > /etc/docker/daemon.json
{
    "debug": true,
    "registry-mirrors": ["https://mirror.gcr.io"],
    "insecure-registries": ["https://mirror.gcr.io"]
}
EOF

service docker restart
