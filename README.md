# pull from Dockerhub

# build image
```
docker build -t netnode:stable .
```

```
docker run -it --name node1 netnode:stable --cap-add=NET_ADMIN
```
bug：windows下的docker开启NET_ADMIN遇到问题
