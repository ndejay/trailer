# Trailer

[![Build Status](https://travis-ci.org/ndejay/trailer.svg)](https://travis-ci.org/ndejay/trailer)

```
docker build -t trailer .
docker run --name db -e POSTGRES_PASSWORD=password -e POSTGRES_USER=rails -d postgres
docker run --name web -d -p 3000:3000 --link db:pg trailer
```
