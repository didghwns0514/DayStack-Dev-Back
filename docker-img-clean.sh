
#echo "Change current directory"
#cd compose-spring

echo "Remove daningling images"
docker rmi -f $(docker images -f "dangling=true" -q) || true
