#!/bin/bash

sudo apt install graphviz
wget https://netcologne.dl.sourceforge.net/project/plantuml/plantuml.jar -O /tmp/plantuml.jar
sudo mkdir -p /usr/local/share/plantuml && cp /tmp/plantuml.jar /usr/local/share/plantuml/plantuml.jar
sudo sed -i 's/\/usr\/share/\/usr\/local\/share/' /usr/bin/plantuml
