FROM kjunine/ubuntu
MAINTAINER Daniel Ku "kjunine@gmail.com"
ENV REFRESHED_AT 2014-10-14

RUN curl -OL https://mms.mongodb.com/download/agent/backup/mongodb-mms-backup-agent_2.6.0.176-1_amd64.deb && \
    dpkg -i mongodb-mms-backup-agent_2.6.0.176-1_amd64.deb

ENV MMS_API_KEY key

ADD ./setup.sh /root/
ADD ./run.sh /root/
WORKDIR /root

CMD ./setup.sh && ./run.sh
