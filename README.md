# usage

```
docker run -p 445:445 docker-samba-share
```

also, you can use local directory.
but local directory requires permissions

```
mkdir /share \
chown nobody:nogroup /share \
chmod 777 /share \
docker run -p 445:445  -v /share:/share docker-samba-share
```

# build
```
docker build -t docker-samba-share .
```