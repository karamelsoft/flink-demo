PROJECT=flink-job

clean:
	./mvnw clean

jar:
	./mvnw package -Pbuild-jar

docker-build:
	docker build . -t nutrow-query-flink:latest

swarm-deploy:
	docker stack deploy -c docker-compose.yml ${PROJECT}

swarm-destroy:
	docker stack rm ${PROJECT}

swarm-update: swarm-destroy docker-build swarm-deploy

