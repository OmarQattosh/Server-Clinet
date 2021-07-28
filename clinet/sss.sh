docker build -t clinet .
docker run -d --name clinetstuff clinet
docker tag clinet omarqattosh/clinetimage
docker push omarqattosh/clinetimage
