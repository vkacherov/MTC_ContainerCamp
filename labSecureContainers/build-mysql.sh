docker pull oraclelinux:7-slim
docker run --rm aquasec/scanner-cli:2.5.2 --host http://aqualab --user administrator --password workshop --registry "Local Engine" --image "oraclelinux:7-slim" > oraclelinux.json
docker build -t lab/mysql:1.0 .
docker run --rm aquasec/scanner-cli:2.5.2 --host http://aqualab --user administrator --password workshop --registry "Local Engine" --image "lab/mysql:1.0" > sql-server.json
