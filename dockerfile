FROM java:openjdk-8-jdk


ENV MULE_RUNTIME_VERSION 3.8.1


RUN apt-get update && \
    apt-get install jq

COPY mule-standalone-${MULE_RUNTIME_VERSION}.zip  /root



RUN cd ~ && \
    cd /root && unzip ~/mule-standalone-${MULE_RUNTIME_VERSION}.zip && \
    rm ~/mule-standalone-${MULE_RUNTIME_VERSION}.zip && \
    ln -s mule-standalone-${MULE_RUNTIME_VERSION} /root/mule


ENV MULE_HOME /root/mule


WORKDIR /root/mule

CMD /root/mule/bin/mule


EXPOSE 8081
