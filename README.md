# calamari-docker

- Pull docker image

```shell
docker pull minshenglin/calamari-docker
```

- Start Calamari container with default account (admin/admin)

```shell
docker run -d -p 80:80 -p 2003:2003 -p 4505:4505 -p 4506:4506 minshenglin/calamari-docker
```

- Start Calamari container with specific account\

```shell
docker run -d -p 80:80 -p 2003:2003 -p 4505:4505 -p 4506:4506 -e username=root -e password=password \
-e email=root@example.com minshenglin/calamari-docker
```
