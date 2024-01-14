FROM	centos:latest
RUN 	sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN	sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN	yum install httpd -y
RUN	curl -o /var/www/html/index.html http://www.google.com
RUN	yum update -y
CMD	[ "/usr/sbin/apachectl" , "-DFOREGROUND" ]

