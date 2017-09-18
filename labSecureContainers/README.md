# Secure Containers 
In this lab we will experiment with securing containerized application by scanning for vulnerabilities, locking down the runtime environment and enforcing compliance.

#### Part 1: Set up Aqua on a single host
1.	Run `pull-aqua.sh <key>` to load the Aqua images into Docker
2.	Run `docker-compose -f aqua-compose.yml up -d` to start Aqua containers
3.	Log in to Aqua at `http://<your host>:80` with administrator/workshop

#### Part 2: Vulnerability and risk assessment
1. From the Images menu, click Add Images to scan an image. Try the following:
   -	debian:jessie
   -	buildpack-deps:jessie
   -	node:latest
2.	Review results

#### Part 3: Integrate risk assessment into builds
1.  Review the script `build-mysql.sh`
2.	Build lab/mysql:1.0 (using script)
3.	Explore results in JSON file and in the UI

#### Part 4: Enforcement on a Docker host
1.	Load the Aqua enforcement container using `agent-run.sh`
2.	See the agent record in Aqua UI. Look at the images list.
3.	In the Aqua UI, using Polcy -> Image Assurance, add a policy to Block Unregistered Images
4.  Try to pull an image on the host. For example `docker run --rm -it redis:latest`

#### Part 5: Run an application with security controls
1.	Run `get-images.sh`. It will fail until images are loaded and scanned
2.	In the meantime, review `read-compose.yml` and look for the database root password
4.  Run `get-images.sh` to pull the images after they are registered

#### Part 6: Secrets Management
1.	Define a secret in Aqua called mysql.password
2.	Run `docker-compose -f read-compose.yml up -d mysql`
3.	After the container starts, run `docker-exec -it read_mysql mysql -p`
4.	Type the secret password and then use \q to exit
5.	Run `docker-compose -f read-compose.yml up -d`
6.	Run `docker inspect read-web`


