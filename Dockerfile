FROM alpine:3

ENV JAVA_HOME=/opt/openjdk
ENV PATH="$JAVA_HOME/bin:$PATH"

RUN mkdir -p $JAVA_HOME \
  && wget -q -O /tmp/java.tar.gz https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.9%2B10/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.9_10.tar.gz \
  && tar --extract --file /tmp/java.tar.gz --directory $JAVA_HOME --strip-components 1 --no-same-owner \
  && rm -rf /tmp/*
