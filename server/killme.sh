docker build -t test .
docker run -d -p 8899:81  test
docker login -u "omarqattosh" -p "omar159852357" docker.io
docker tag test omarqattosh/server
docker push omarqattosh/server

