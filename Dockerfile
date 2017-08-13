FROM debian

RUN apt-get install software-properties-common
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt-get update
RUN apt-get install -y git ansible
RUN git clone https://github.com/saptadip/ansible.git /tmp/testRepo

CMD ansible-playbook /tmp/testRepo/custom-setup.yml --syntax-check
