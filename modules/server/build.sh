#!/bin/bash

cd /home/mayooran/developments/madrona/modules/server

mvn clean install;

cd target/;

unzip madrona-server.zip;

./madrona-server/bin/madrona-server console