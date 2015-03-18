# Zeppelin-docker
Dockerfile for Apache Zeppelin

**Zeppelin**, a web-based notebook that enables interactive data analytics. You can make beautiful data-driven, interactive and collaborative documents with SQL, Scala and more.

Core feature:
   * Web based notebook style editor.
   * Built-in Apache Spark support


To know more about Zeppelin, visit our web site [http://zeppelin-project.org](http://zeppelin-project.org) 

To run Zeppelin execute:

`docker run -it --rm -p 8080:8080 -p 8081:8081 ipedrazas/zeppelin`

Bear in mind that Zeppelin uses 2 ports: one for the web interface and another one for websockets: 8080 and 8081, if you want to use different ports, change de docker port mapping.
