PROJECT=flink_infra

swarm-configure:
	docker swarm init ;\
	docker network create -d overlay --attachable flink ;\
	docker-compose pull

swarm-deploy: swarm-configure
	docker stack deploy -c docker-compose.yml ${PROJECT}

k8s-deploy:
	docker stack deploy --orchestrator=kubernetes -c docker-compose.yml ${PROJECT}

swarm-destroy:
	docker stack rm ${PROJECT}
