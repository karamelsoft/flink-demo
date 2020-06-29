PROJECT=flink-lab

swarm-configure:
	docker swarm init ;\
	docker network create -d overlay --attachable dim3 ;\
	docker-compose pull

swarm-deploy: swarm-configure
	docker stack deploy -c docker-compose.yml ${PROJECT}

swarm-destroy:
	docker stack rm ${PROJECT}
