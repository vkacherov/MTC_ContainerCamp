sudo docker load -i /opt/lab-files/aquasec-agent.tar
docker rm aqua-agent
docker run -d --privileged --restart=always --name aqua-agent --pid=host -e AQUA_TOKEN=workshop -e AQUA_SERVER=$(hostname):3622 -e RESTART_CONTAINERS=no -v /var/run:/var/run -v /dev:/dev -v /sys:/host/sys:ro -v /proc:/host/proc:ro -v /etc:/host/etc -v /opt/aquasec:/host/opt/aquasec:ro -v /opt/aquasec/tmp:/opt/aquasec/tmp -v /opt/aquasec/audit:/opt/aquasec/audit aquasec/agent:2.5.2
