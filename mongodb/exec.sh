 docker run -it \
 --link mongo:mongo \
 --network my-net \
 --rm mongo sh -c 'exec mongo "mongo:27017/test"'