#!/bin/bash

echo "Starting ThingsBoard installation ..."

exec java -cp ./application/target/thingsboard-3.3.1-boot.jar $JAVA_OPTS -Dloader.main=org.thingsboard.server.ThingsboardInstallApplication \
                    -Dinstall.data_dir=./application/target/data/ \
                    -Dinstall.load_demo=true \
                    -Dspring.jpa.hibernate.ddl-auto=none \
                    -Dinstall.upgrade=false \
                    -Dlogging.config=logback.xml \
                    org.springframework.boot.loader.PropertiesLauncher
