################## BEGIN INSTALLATION ######################
## SMSTools3


FROM ubuntu
MAINTAINER iDual.de


################## BEGIN INSTALLATION ######################

RUN apt-get update && \
	apt-get install -y --force-yes build-essential manpages-dev && \
	apt-get install -y smstools && apt-get install nano

#   apt-get -y install gcc make tar wget nano curl logrotate cron sudo procmail && \
#	apt-get -y install php7.0 libapache2-mod-php7.0


RUN mkdir -p /var/log/smstools/smsd_stats /var/run/smstools

COPY smsd.conf /etc/
RUN chmod 644 /etc/smsd.conf

VOLUMES 
#- ./spool/sms:/var/spool/sms
#- /Users/user/Desktop/smstools3:/var/lib/sms

# CMD ["smsd", "-t"]

#ADD http://smstools3.kekekasvi.com/packages/smstools3-3.1.21.tar.gz /tmp/
#RUN tar -xzf /tmp/smstools3-3.1.21.tar.gz -C /tmp; \
#    cd /tmp/smstools3 && \
#    make && make install && \
#    mkdir -p /var/log/smstools/smsd_stats /var/run/smstools\
#   cd && rm -rf /tmp/smstools3