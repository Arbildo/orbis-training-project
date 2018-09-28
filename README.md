 Parte 4:
 	4. commando:
 		docker build -t irvinstone/orbis-training-docker:0.1.0 .
	5. commandos:
		docker login
		docker push irvinstone/orbis-training-docker
	4. coomandos:
		docker tag irvinstone/orbis-training-docker:0.1.0 irvinstone/orbis-training-docker:0.2.0
		docker push irvinstone/orbis-training-docker

Parte 6:
	2. commando:
		docker run -d -p "1080:80" irvinstone/orbis-training-docker:1.0.0

	6 commando:
		docker-compose up -d





