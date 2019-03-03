FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y openssh-server net-tools inetutils-ping
RUN apt-get install -y apache2
RUN apt-get install -y python
RUN service apache2 start
RUN service ssh start
RUN systemctl enable apache2
RUN systemctl enable ssh

ADD Keys/id_rsa.pub /root/.ssh/authorized_keys
RUN chmod 400 /root/.ssh
RUN chmod 600 /root/.ssh/authorized_keys

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
