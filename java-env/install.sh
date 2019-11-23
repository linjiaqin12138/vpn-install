wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/13.0.1+9/cec27d702aa74d5a8630c65ae61e4305/jdk-13.0.1_linux-x64_bin.tar.gz

tar -xvf jdk-13.0.1_linux-x64_bin.tar.gz
rm jdk-13.0.1_linux-x64_bin.tar.gz
mv jdk-13.0.1/ /usr/local/jdk 
echo "JAVA_HOME=/usr/local/jdk/jdk-13.0.1" >> /etc/profile 
echo "JAVA_JRE=/usr/local/jdk/jdk-13.0.1/jre" >> /etc/profile 
echo "CLASSPATH=\$JAVA_HOME/lib" >> /etc/profile 
echo "PATH=\$PATH:\$JAVA_HOME/bin" >> /etc/profile 

source /etc/profile 
export PATH JAVA_HOME CLASSPATH JAVA_HOME
echo $PATH $JAVA_HOME $CLASSPATH $JAVA_HOME
java -version 

cd $JAVA_HOME

./bin/jlink --module-path jmods --add-modules java.desktop --output jre

ls ./bin | grep jre 
