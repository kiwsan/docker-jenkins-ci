# 🚀 Quick start

### We need to run docker inside docker. So, you can find the docker path on your environments with command:

    $ which docker

### And you can see:

    $ /usr/bin/docker

### Build docker-compose

    $ docker-compose -f docker-compose.yml build

### Run docker-compose

    $ docker-compose -f docker-compose.yml up -d

### You can get the password with command. (we need to get the root password only once.)

    $ docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

### Let's have fun

    $ curl http://localhost:8081
