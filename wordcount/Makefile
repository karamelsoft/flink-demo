PROJECT=flink_wordcount

clean:
	mvn clean

package:
	mvn package -Pbuild-jar

docker-build:
	mvn package -Pbuild-jar -Pdocker

swarm-deploy:
	docker stack deploy -c docker-compose.yml ${PROJECT}

swarm-destroy:
	docker stack rm ${PROJECT}

swarm-update: swarm-destroy docker-build swarm-deploy

