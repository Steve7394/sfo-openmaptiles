1- install latest version of docker and docker compose plugin
2- cd openmaptile directory
3- if data direcory is missing create one, put iran-latest.osm.pbf in directory
4- put pbf fonts in data directory, like ./data/fonts/{fontname}
4- use command "make start-db", make sure 5432 port is ready for use or change the postgres container port in .env file
5- use command "make import-data"
6- use command "make import-osm"
7- use command "make import-sql"
8- use command "make generate-tiles-pg"

9- download iran hgt files from "https://srtm.kurviger.de/SRTM3/Eurasia/index.html" N25-N44 and E39-E44
    you can get this files from graphhopper project if you enable elevation
10- put downloaded file in .sfo/srtmprovider
11- use command make "generate-dem-layer" to generate terrain tiles
    this command do: unzip hgt files, merge them to tif, interpolate no data pixels,
    rgibify tif, generate terrain mbtiles and add down level zoom tiles

// if tiles are generated, start from this step

12- build and run dockerfile, like  "docker build -t my-tileserver ." and then  "docker run -p 8080:8080 my-tileserver"
13- the style file, sprites, fonts where served by my-tileserver
14- use style in maplibre client like test.html file
