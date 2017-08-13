FROM williamyeh/ansible:debian8

RUN ansible-playbook --version
RUN mkdir /tmp/testRepo
RUN git clone https://github.com/saptadip/ansible.git /tmp/testRepo

CMD ansible-playbook /tmp/testRepo/custom-setup.yml --syntax-check
