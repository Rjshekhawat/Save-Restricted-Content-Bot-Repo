FROM python:3.9.2-slim-buster
RUN mkdir /app && chmod 777 /app
WORKDIR /app
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -qq update && apt -qq install -y git python3 python3-pip ffmpeg
COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
CMD ["bash","bash.sh"]
CMD gpmacario@nemo:~/github/hackafake/hackafake-backend (master)$ docker-compose up
Creating network "hackafakebackend_default" with the default driver
Building server
Step 1/12 : FROM debian:latest
 ---> 2b98c9851a37
Step 2/12 : RUN apt update &&     apt install python3 python3-pip -y &&     apt install nginx supervisor -y
 ---> Running in 90822fb6839e

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

Ign:1 http://deb.debian.org/debian stretch InRelease
Get:2 http://deb.debian.org/debian stretch-updates InRelease [91.0 kB]
Get:3 http://security.debian.org stretch/updates InRelease [94.3 kB]
Get:4 http://deb.debian.org/debian stretch Release [118 kB]
Get:5 http://deb.debian.org/debian stretch Release.gpg [2434 B]
Get:6 http://security.debian.org stretch/updates/main amd64 Packages [468 kB]
Get:7 http://deb.debian.org/debian stretch-updates/main amd64 Packages [5476 B]
Get:8 http://deb.debian.org/debian stretch/main amd64 Packages [9500 kB]
Fetched 10.3 MB in 4s (2418 kB/s)
Reading package lists...
Building dependency tree...
Reading state information...
8 packages can be upgraded. Run 'apt list --upgradable' to see them.

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

Reading package lists...
Building dependency tree...
