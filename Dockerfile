FROM debian

RUN sudo apt-get install -y python
RUN sudo pip install ansible
RUN sudo apt-get install -y git
RUN sudo apt-get update
RUN git clone https://github.com/saptadip/ansible.git /tmp/testRepo

CMD ansible-playbook /tmp/testRepo/custom-setup.yml --syntax-check
