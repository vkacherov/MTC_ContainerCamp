# Secure Containers 
In this lab we will experiment with securing containerized application by scanning for vulnerabilities, locking down the runtime environment and enforcing compliance.


1.	Run pull-images.sh <key> to load the Aqua images into Docker
2.	Run docker-compose -f aqua-compose.yml up -d
3.	Log in to Aqua at http://<your host>:80 with administrator/workshop
4.	Load some sample images
-	debian:jessie
-	buildpack-deps:jessie
-	node:latest
5.	Review results
6.	Build lab/mysql:1.0 (using script)
7.	Explore results in JSON file and in the UI
8.	Load the Aqua agent using agent-run.sh
9.	See the agent record in Aqua UI. Look at the images list.
10.	Add Image Assurance policy of Block Unregistered Images
11.	Try using other unregistered images
12.	Run get-images.sh, it will fail until images are loaded and scanned
13.	In the meantime, review read-compose.yml
14.	Define a secret in Aqua called mysql.password
15.	Run docker-compose -f read-compose.yml up -d mysql
16.	Run docker-exec -it read_mysql mysql -p
17.	Type the secret password and then use \q to exit
18.	Run docker-compose -f read-compose.yml up -d
19.	Run docker inspect read-web


