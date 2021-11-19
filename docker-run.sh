
#echo "Change current directory"
#cd compose-spring

echo "Pull newest image to local Container"
docker pull korshika/daystack-back-spring:latest

echo "Remove daningling images"
docker rmi -f $(docker images -f "dangling=true" -q) || true

echo "Stop container if exists"
#docker ps -q --filter "name=daystack-back-spring" | grep -q .   \
#&& docker stop DayStack-Spring-Server && docker rm DayStack-Spring-Server
docker stop DayStack-Spring-Server && docker rm DayStack-Spring-Server

echo "Run the newest image"
cd ..
echo "Current PWD : $PWD"
echo "Current files ls : "
ls
#docker run --name DayStack-Spring-Server -d -p 5551:8080 korshika/daystack-back-spring:latest
#docker run --name DayStack-Spring-Server -d -p 5551:8080 -v /build/libs:/deploy korshika/daystack-back-spring:latest
docker run --network shareNetwork-daystack --name DayStack-Spring-Server -d -p 5551:8080 --link mysql-daystack:mysql-daystack korshika/daystack-back-spring:latest


echo ""
echo "---------------------"
echo "Check Running Dockers"
docker ps -a