#/bin/bash

#install java
mkdir /usr/lib/jvm
cd /usr/lib/jvm
curl -L -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u74-b02/server-jre-8u74-linux-x64.tar.gz -O
tar zxvf server-jre-8u74-linux-x64.tar.gz
chown root:root -R jdk1.8.0_74
ln -s /usr/lib/jvm/jdk1.8.0_74 latest
ln -s /usr/lib/jvm/latest default

update-alternatives --install /usr/bin/java java /usr/lib/jvm/default/bin/java 20000
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/default/bin/javac 20000
update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/default/bin/jar 20000

# clean up
rm server-jre-8u74-linux-x64.tar.gz

# verfiy java version
java -version