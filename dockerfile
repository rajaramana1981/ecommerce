FROM centos/wildfly
ADD /target/sample-1.0-SNAPSHOT.war /opt/standalone/deployments/
RUN /opt/wildfly/bin/add-user.sh admin admin#70365 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
