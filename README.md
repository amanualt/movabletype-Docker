# movabletype-Docker

## before installation

if you wanna install spesific version, change git tag on [Dockerfile file line 50](https://github.com/om3rcitak/movabletype-Docker/blob/master/Dockerfile#L50).

All tags: https://github.com/movabletype/movabletype/releases

## installation

`git clone https://github.com/amanualt/movabletype-Docker.git`

`cd movabletype-Docker`

`git clone https://github.com/movabletype/movabletype.git`

`cd movabletype`

`git checkout tags/mt6.3.5 && cd ..`

`mv movabletype/* movabletype/.* MT-6.3.5/`

`docker-compose up`
