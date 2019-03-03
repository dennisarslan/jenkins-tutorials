FROM jenkins/jenkins:lts
#USER jenkins
USER root

RUN apt-get update
RUN apt-get install -y openssh-server net-tools inetutils-ping ansible python-pip rubygems
RUN gem install serverspec
RUN pip install ansible

#RUN mkdir /var/jenkins_home/.ssh

#COPY keys/id_rsa.pub /root/.ssh/authorized_keys
#ADD --chown jenkins:jenkins Keys/id_rsa /var/jenkins_home/.ssh/id_rsa
VOLUME /var/jenkins_home/.ssh
USER jenkins
#ADD --chown=jenkins Keys/id_rsa /var/jenkins_home/.ssh/id_rsa
COPY --chown=jenkins Keys/id_rsa /var/jenkins_home/.ssh/id_rsa
COPY --chown=jenkins ssh_config /var/jenkins_home/.ssh/config

#RUN chown -R jenkins:jenkins /var/jenkins_home/.ssh
#RUN chown jenkins:jenkins /var/jenkins_home/.ssh/id_rsa
RUN chmod 400 /var/jenkins_home/.ssh
RUN chmod 600 /var/jenkins_home/.ssh/id_rsa
