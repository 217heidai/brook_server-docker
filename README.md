# brook-docker
brook docker image. <https://github.com/txthinking/brook>

# How to Setup
```bash
docker container run -d \
    --restart=always \
    --name brook \
    -e password=hello \ # password for brook
    -p 18080:9999/tcp \
    -p 18080:9999/udp \
    217heidai/brook
```

# How to Upgrade
1. stop and remove your existing brook container.
2. setup new brook container.

## ChangeLog
| Date      | Content                                                              |
|-----------|----------------------------------------------------------------------|
| 2020.12.04 | brook v20210101 |
