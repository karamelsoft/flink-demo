PROJECT=flink_infra

swarm-deploy:
	docker stack deploy -c docker-compose.yml ${PROJECT}

k8s-deploy:
	docker stack deploy --orchestrator=kubernetes -c docker-compose.yml ${PROJECT}

swarm-destroy:
	docker stack rm ${PROJECT}
