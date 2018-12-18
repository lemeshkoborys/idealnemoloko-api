docker-compose up -d
cat dump_final.sql | docker exec -i idealnemoloko-api_db_1_ed51eda56122 psql -U db_role idealnemoloko_db
docker-compose stop
