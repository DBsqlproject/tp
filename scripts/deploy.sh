cd /home/ubuntu/tomcat9
bin/shutdown.sh
cd webapps
rm -rf tp/
rm -rf tp.war
cp ~/tomcat9/build/build/libs/tp-0.0.1-SNAPSHOT-plain.war ./tp.war
cd ..
bin/startup.sh