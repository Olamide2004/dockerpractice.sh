#practice script to help with installing docker on centos machine and docker compose 

# first off update yum
yum update&&upgrade -y
sudo yum install -y -q yum-utils 
#now install docker 
sudo yum install docker -y
sudo systemctl enable docker 
sudo systemctl start docker 
#now to grant docker permission to the regular user in this case vagrant
sudo groupadd docker 
sudo usermod -aG docker vagrant 
# let install wget to help with docker-compose
sudo yum install wget -y
#now to install docker-compose 
sudo yum install epel-release.noarch -y
sudo yum install python-pip
pip install docker-compose
# yum upgrade the pip installer, pip is like a python based yum it helps with installing packages
yum upgrade python* -y
#let checkm version of docker compose and we done
docker-compose -v