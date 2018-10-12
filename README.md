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

	6. commando:
		docker-compose up -d

PARTE 7:

	5. comando Para dar volumen e install node
		docker run -i -v $PWD/app:/app  -w /app arbildo/orbis-training-docker:2.0.0 npm install

	5. comando Para dar volumen, exponer el puerto 3030 e iniciar node
		docker run -i -v $PWD/app:/app  -w /app -p 3030:3030 arbildo/orbis-training-docker:2.0.0 npm start
	
	7. comando Para dar volumen, exponer ambos puertos e iniciar node
		docker run -i -v $PWD/app:/app  -w /app -p 3030:3030 -p 35729:35729 arbildo/orbis-training-docker:2.0.0 npm start

Nuevo puerto asignado en servidor : 1042
	9. Comando para ejecutar release en servidor
		docker run -i -v $PWD/app:/app  -w /app  arbildo/orbis-training-docker:2.0.0 npm run release
	10. Comando para ejecutar release en servidor
		docker run -i -v $PWD/app:/app  -w /app  arbildo/orbis-training-docker:2.0.0 npm run release
Ejecutar Bash en el container
	11. Comando : docker run -i -v $PWD/app:/app  -w /app/resources  arbildo/orbis-training-docker:2.0.0 ./example.sh

Ejecutar y mostrar mensaje cuando se ejecuta contenedor en docker run
	12. docker run -i -v $PWD/app:/app --entrypoint=/bin/echo  -w /app/resources  arbildo/orbis-training-docker:2.0.0 "Ejecutando un contenedor ..."
