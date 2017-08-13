FROM debian

RUN apt-get remove python-pip
RUN apt-get install python-pip
RUN pip install ansible
RUN apt-get install -y git
RUN apt-get update
RUN git clone https://github.com/saptadip/ansible.git /tmp/testRepo

CMD ansible-playbook /tmp/testRepo/custom-setup.yml --syntax-check
