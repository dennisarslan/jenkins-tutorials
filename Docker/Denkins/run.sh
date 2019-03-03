#docker build -t jenkins:0.0.1 .
#docker build -t registry/denkins:0.0.1 .
#docker run -v /tmp/jenkins:/var/jenkins_home -d -t -p8080:8080 jenkins:0.0.1
#docker run -v privatekey.pem:/root/.ssh/id_rsa -v privatekey.pem:/var/jenkins_home/.ssh/id_rsa -v /tmp/jenkins:/var/jenkins_home -d -t -p8080:8080 jenkins:0.0.1
#docker run -d -t -p22 denbuntu:0.0.1
docker run -p 8080:8080 -p 50000:50000 -v /tmp/jenkins_lts:/var/jenkins_home jenkins/jenkins:lts
