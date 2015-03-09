
cd ../zeppelin-zengine
mvn clean package -Pspark-1.2 -Dhadoop.version=2.3.0 -Phadoop-2.3 -DskipTests


cd zeppelin-server
mvn clean package -Pspark-1.2 -Dhadoop.version=2.3.0 -Phadoop-2.3 -DskipTests

cd ../zeppelin-web
mvn clean package -Pspark-1.2 -Dhadoop.version=2.3.0 -Phadoop-2.3 -DskipTests

