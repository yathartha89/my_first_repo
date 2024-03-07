#!/bin/bash
function cloning_repository() {
   git clone https://github.com/yathartha89/django-notes-app.git

}

function installing_dependencies() {
   echo "Installing dependencies"
   sudo apt-get update -y
   sudo apt-get install -y docker.io
   sudo apt-get install -y docker-compose
}

function restarting_dependencies() {
   sudo service docker enable
   sudo service docker start
 
}

function building_image() {
   sudo chown $USER /var/run/docker.sock 
   sudo docker build -t my-app:1.0 .


}

echo "*******Deployment started******* "


function starting_application() {
   #docker run -d -p 8000:8000 my-app:1.0
   docker-compose up -d


}



if ! cloning_repository;then
	echo "The repository is already exists"
	cd django-notes-app
fi	




if ! restarting_dependencies;then
	echo "Installation fault identified"
	exit 1
fi
building_image
if ! starting_application;then
	echo "deployment failed, mailing the admin"
	exit 1
fi
	
echo "******Deployment done******"

