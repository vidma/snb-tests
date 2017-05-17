#!/bin/bash

echo "Start gen.sh"
echo $(date)
echo "At directory `pwd`"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
export PATH=/usr/local/bin:/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home/bin:$PATH

echo "cd /tmp/generated-sbt-projects/simple-spark"

cd /tmp/generated-sbt-projects/simple-spark


echo "compiling/publishing a jar"
/usr/local/bin/sbt -Dspark.version=2.0.1 -Dhadoop.version=2.2.0 clean package
echo "$?" > compile.statuscode
       


|
echo "End gen.sh"
echo $(date)