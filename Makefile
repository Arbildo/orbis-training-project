
##ENV = $PWD

#instala depencias
install:
	docker run -i -v ${PWD}/app:/app  -w /app arbildo/orbis-training-docker:2.0.0 npm install

#inicializa el proyecto
start:
	docker run -i -v ${PWD}/app:/app  -w /app -p 3030:1042 -p 35729:35729 arbildo/orbis-training-docker:2.0.0 npm start
#compila el código
release:
	docker run -i -v $PWD/app:/app  -w /app  arbildo/orbis-training-docker:2.0.0 npm run release
#muestra saludo
greet:
	docker run -i -v ${PWD}/app:/app  -w /app/resources  arbildo/orbis-training-docker:2.0.0 ./example.sh ${NOMBRE}
