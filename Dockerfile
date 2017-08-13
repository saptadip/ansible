FROM debian

RUN apt-get install -y python
RUN pip install ansible
RUN apt-get install -y git
RUN apt-get update
RUN git clone https://github.com/saptadip/ansible.git /tmp/testRepo

CMD ansible-playbook /tmp/testRepo/custom-setup.yml --syntax-check
