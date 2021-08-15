#!/bin/bash

#Generate 1000 failed SSH login attempts on a single web server. Must be run outside of the authaurized VM/Container to generate failed attempts.

for i in {1..1000}; do ssh Web_1@10.0.0.5; done

#Generate an infinite number of SSH login attempts on a single web server on all 3 webservers. Must be run outside of the authaurized VM/Container to generate failed attempts.

while true; do for i in {5..7}; do ssh Web_1@10.0.0.$i; done

#start and attach to the Ansible container in one command from the Jump Box.

sudo docker start hopeful_lalande && sudo docker attach hopeful_lalande

#use wget to generate high amount of web request to perform a DoS attack

while true; do wget 10.0.0.5; done

#same as the previous command without generating the `index.html` file after each request

while true; do wget 10.0.0.5 -O /dev/null; done

#same as the previous command, this time the `wget` DoS is performed on the 3 webserver at the same time

while true; do for i in {5..7}; do wget -O /dev/null 10.0.0.$i; done

