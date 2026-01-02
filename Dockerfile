FROM ubuntu
MAINTAINER ankit@gmail.com
RUN apt-get update -y && apt-get install nginx -y 
RUN mdkir -p devops
COPY test  /opt/
ADD https://github.com/dotcloud/docker/archive/master.tar.gz /root/devops
ADD   tar -xzvf master.tar.gz
EXPOSE 80 
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

 
ENTRYPOINT  [  "/usr/sbin/python3" "-c" ]
CMD         [  "app.py"]
