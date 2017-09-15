docker pull aquasec/server:2.5.2
docker pull aquasec/gateway:2.5.2
docker pull aquasec/scanner-cli:2.5.2
docker pull aquasec/database:2.5.2

docker pull ravitella/docker-springboot-recommendationservice:latest
docker pull ravitella/docker-springboot-readinglistapplication:latest
docker pull mysql/mysql-server:latest

docker load -i /opt/lab-files/aquasec-scanner-cli.tar
docker load -i /opt/lab-files/aquasec-gateway.tar
docker load -i /opt/lab-files/aquasec-server.tar
docker load -i /opt/lab-files/aquasec-database.tar
