docker-compose up -d
docker exec -i idealnemoloko-api_db_1 pg_dump -U db_role idealnemoloko_db > dump_final.sql
docker-compose stop