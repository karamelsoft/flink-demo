PROJECT=flink-lab

clean:
	./mvnw clean

compile:
	./mvnw compile test-compile

test:
	./mvnw test

package:
	./mvnw package -Pbuild-jar

swarm-configure:
	${MAKE} -C infrastructure swarm-configure

docker-build:
	${MAKE} -C wordcount docker-build

swarm-deploy: swarm-configure
	${MAKE} -C infrastructure swarm-deploy
	${MAKE} -C wordcount swarm-deploy

swarm-destroy:
	${MAKE} -C wordcount swarm-destroy
	${MAKE} -C infrastructure swarm-destroy

swarm-redeploy: swarm-destroy docker-build swarm-deploy
