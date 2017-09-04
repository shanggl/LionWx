#unset JAVA_HOME
#unset PATH

export JAVA_HOME=/usr/share/java/jdk1.7.0_25

export MAVEN_OPTS="-Xms1024M -Xmx1024M -XX:PermSize=256M -XX:MaxPermSize=256M"
#export PATH=$JAVA_HOME/bin:/usr/bin/:/usr/sbin:/home/shanggl/apps/bin:/home/shanggl/apps/bin/apache-maven-3.2.5/bin

java -version

mvn -s ../settings.xml tomcat7:run 
