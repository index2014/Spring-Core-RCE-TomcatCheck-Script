javaversion=$(java -version 2>&1 | sed '1!d' | sed -e 's/"//g' |sed 's/.0....//' | awk '{print $3}')|
ifspring=$(find ./ -name "spring-core*")|
if ($javaversion>1.8); then
	echo "Danger JDK 4 Spring"
else
	echo "Safe JDK 4 Spring"
fi
echo "Spring-Core is in $ifspring"
