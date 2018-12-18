docker-compose up -d
cat dump_final.sql | docker exec -i idealnemoloko-api_db_1 psql -U db_role idealnemoloko_db
docker-compose stop