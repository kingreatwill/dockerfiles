# read -p "key words:" name
# echo ${name}
docker rmi $(docker images | awk '$1 ~ /sites/ { print $3 }')