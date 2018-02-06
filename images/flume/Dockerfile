#############################
# Dockerfile to build FLUME 
# http://blog.probablyfine.co.uk/2014/05/05/using-docker-with-apache-flume-1.html
# http://blog.probablyfine.co.uk/2014/08/24/using-docker-with-apache-flume-2.html
#############################


FROM probablyfine/flume
ADD ./config/flume.conf /opt/flume-config/flume.conf
EXPOSE 44444
ENTRYPOINT [ "flume-ng", "agent", "-c", "/opt/flume/conf", "-f", "/opt/flume-config/flume.conf", "-n", "docker", "-Dflume.root.logger=INFO,console" ]
