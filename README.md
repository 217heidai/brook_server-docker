# brook_server-docker
brook_server docker image. <https://github.com/txthinking/brook>

# How to Setup
```bash
docker container run -d \
    --restart=always \
    --name brook_server \
    -e listen_port=9999 \ # listen port for brook server
    -e password=hello \ # password for brook server
    --net host \
    217heidai/brook_server
```

# How to Upgrade
1. stop and remove your existing brook container.
2. setup a new brook_server container.

## ChangeLog
| Date      | Content                                                              |
|-----------|----------------------------------------------------------------------|
| 2020.12.24 | brook_server v20210101 |
