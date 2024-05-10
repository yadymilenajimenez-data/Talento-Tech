Set-Location ..
docker build . -f Docker-images\Dockerfile_geopandas -t geopandas_etl
docker build . -f Docker-images\Dockerfile_mysql -t mysql

docker-compose up -d