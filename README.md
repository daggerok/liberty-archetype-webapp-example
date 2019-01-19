# OpenLiberty quick start [![Build Status](https://travis-ci.org/daggerok/liberty-archetype-webapp-example.svg?branch=master)](https://travis-ci.org/daggerok/liberty-archetype-webapp-example)

## generate a project

```bash
# generate new project
mvn -B archetype:generate \
    -DarchetypeVersion=2.6.3 \
    -DruntimeVersion=18.0.0.4 \
    -DlibertyPluginVersion=2.6.3 \
    -DarchetypeGroupId=net.wasdev.wlp.maven \
    -DarchetypeArtifactId=liberty-archetype-webapp \
    -DgroupId=com.github.daggerok \
    -DartifactId=liberty-archetype-webapp-example \
    -Dversion=1.0.0-SNAPSHOT
# install maven wrapper
cd ./liberty-archetype-webapp-example/
mvn -N io.takari:maven:wrapper -Dmaven=3.6.0
```

## maven plugin

```bash
# build and run
./mvnw -Prestart
# test
http :9080/liberty-archetype-webapp-example/servlet
# shutdown
./mvnw -Pstop
```

## fat jar

```bash
# build
./mvnw clean package
# run
java -jar target/*.jar
# test
http :9080/liberty-archetype-webapp-example/servlet
```

## docker

```bash
# build
docker build -t app .
# run
docker run --rm -d -p 80:9080 -p 443:9443 --name run-app app
docker logs -f -t run-app
# test
http :80/liberty-archetype-webapp-example/servlet
# shutdown
docker rm -f -v run-app
```
