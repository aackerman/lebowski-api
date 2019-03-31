On a new machine

* snap install docker
* Install docker-compose
  * https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04
* mkdir /apps && cd /apps
* git clone https://github.com/aackerman/lebowski-api.git
* cd lebowski-api
* Bind to port 80 instead of 3000
  * sed -i 's/3000:3000/80:3000/g' docker-compose.yml
* sudo cp lebowski-api.service /etc/systemd/system/lebowski-api.service
* sudo systemctl start lebowski-api.service
