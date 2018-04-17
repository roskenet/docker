#!/usr/bin/env bash

case $1 in
    'java')
        nohup /opt/eclipse-java/eclipse -vm /opt/jdk-10/bin/java 2>&1 &
        ;;
    'spring')
        nohup /home/felix/Binaries/eclipse-spring/eclipse 2>&1 &
        ;;
    'python')
        source ~/Workspaces/Python/bin/activate
        nohup /home/felix/Binaries/eclipse-python/eclipse 2>&1 &
        ;;
    'cpp')
        /home/felix/Binaries/eclipse-cpp/eclipse &
        ;;
    'clojure')
       export PATH=/home/felix/Binaries/jdk-8/bin:$PATH
       /home/felix/Binaries/eclipse-clojure/eclipse -vm /home/felix/Binaries/jdk-10/bin/java &
       ;;
    'js')
       nohup /home/felix/Binaries/eclipse-js/eclipse -vm /home/felix/Binaries/jdk-10/bin/java 2>&1 &
       ;;
esac
