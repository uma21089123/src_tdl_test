sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd

sudo yum install -y java

sudo yum install -y tomcat
sudo systemctl start tomcat
sudo systemctl enable tomcat

sudo yum install -y git
