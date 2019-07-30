#!/bin/bash
POM_VERSION=$( grep -A 2 "<artifactId>eam-wshub-proxyclient" pom.xml | grep "version" | sed 's/<version>//' | sed 's/<\/version>//' | sed 's/\t//' | sed 's/  //')
echo Version determined: $POM_VERSION
mvn deploy:deploy-file -Dfile=target/eam-wshub-proxyclient-${POM_VERSION}.jar -DpomFile=pom.xml -Durl=file:///home/ec2-user/maven_repository
