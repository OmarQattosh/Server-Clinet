docker build -t test .
docker run -d -p 8899:80  test
docker tag test omarqattosh/server
docker push omarqattosh/server

