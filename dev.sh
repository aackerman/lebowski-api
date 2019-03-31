docker-compose up -d postgres
docker-compose run --service-ports -v $(pwd):/app api /bin/sh
