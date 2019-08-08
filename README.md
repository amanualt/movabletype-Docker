# movabletype-Docker

## before installation

if you wanna install spesific version, change git tag on [Dockerfile file line 50](https://github.com/om3rcitak/movabletype-Docker/blob/master/Dockerfile#L50).

All tags: https://github.com/movabletype/movabletype/releases

## installation

`git clone https://github.com/amanualt/movabletype-Docker.git`

`cd movabletype-Docker`

`rm -rf movabletype`

`git clone https://github.com/movabletype/movabletype.git`

`docker-compose up -d --build`

# Access

use `localhost` or `127.0.0.1`

# cek ip and port database

`docker inspect db`
