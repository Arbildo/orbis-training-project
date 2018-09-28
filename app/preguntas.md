# Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
- [Carlos Arbildo]
- [Irvin León]
- [Juan Salvardor]

PARTE 1
1. ¿Qué es y para qué sirve GIT?
	Git es un sistema de versionamiento de código, sirve para versionar y hacer seguimiento al código de un proyecto
2. ¿Que es Github o bitbucket?
	Es Git ofrecido como servicio
3. ¿Qué es y para qué sirve el SSH?
	SSH es un protocolo encriptado para la ejecución remota. 	
4. ¿Que pasa si cambio de PC? ¿Tendré que generar el SSH nuevamente?¿Por qué?
	Si se cambia de PC se tiene que generar nuevamente la clave SSH ya que SSH es P2P
5. ¿Qué es markdown? ¿Para qué sirve?
	Es un lenguaje de etiqueado, sirve para escribir notaciones y/o documentación.
6. ¿Cómo inicializo y configuro un proyecto de git?
	Se inicializa con el comando "git init .". Se configura mediante los comandos "git config", "git remote config" 

PARTE 2
1. ¿Para qué ayuda el `git stash`?
	Sirve para generar commits temporales y ajustarlos a la pila.
2. ¿Cuál es la diferencia entre `git stash pop` y `git stash apply`?
	"git stash pop"		->	Aplica el cambio del top  y lo remueve de la pila.
	"git stash apply" 	->	Aplica el cambio del top o a uno específico pero mantiene este en la pila
3. ¿Qué significa el modo interactivo del `git rebase`?
	Provee al usuario de funcionalidades como : "squash", "drop", "pick", etc.  extras previas al rebase
4. ¿Cual es la diferencia entre la shell y la terminal?
	Shell		-> 	Interprete de comandos del core de un sistema operativo tipo linux / unix
	Terminal	->	Punto de acceso a un sistema
	
5. ¿Que hace estos comandos? `git clone`, `git status`, `git add`, `git commit`, `git push`, `git checkout`, `git stash`, `git rebase`, `git merge`, `git branch`, `git push`?
 `git clone`	->	Clona un repositorio
 `git status`	->	Muestra el estado de los archivos en el working directory
 `git add`	->	Agrega y prepara los archivos al stage para un commit
 `git commit`	->	Confirmaciòn de un cambio el cuál necesita una mensaje y guarda en history
 `git push`	->	Envía los cambios del history a un repositorio remoto
`git checkout`	->	Es un comando multifuncional que opera en archivos, commits y ramas
`git stash`	->	Agrega cambios a una pila llamada stash
`git rebase`	->	Iguala commits de una rama padre con una rama hija, y coloca los commits de diferencia sobre el HEAD antiguo.
`git merge`	->	Mezcla dos ramas
`git branch`	->	Gestionar ramas


PARTE 4

1. ¿Qué importancia tiene los tags en un proyecto?
	Indican una versiòn de lanzamiento del proyecto

2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
	Un tag anotado permite almaecenar información relacionada con la etiqueda, en cambio el tag normal solo sirve como puntero

3. ¿Cómo se sube todos los tags de git que hay en mi local?
	git push --tags

4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
	No es necesario

5. ¿Qué es y para qué sirve docker?
	Es una plataforma para desarrollores para construir y correr aplicatoines distribuidad usando contenedores.

6. ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?
	Docker interactua directamente con el sistema operativo, mientras que VirtualBox necesita una capa de sistema operativo.

7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
	Sí, todas las imágenes necesitan una imágen base para generarse, la imágen base es "scratch"

8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
	Por que es un estàndar de dockerhub para identificar a qué usuario de docker pertenece	

9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
	Se crea con la versión latest

	PARTE 5

1. ¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
	Para poder acceder al modo interactivo del contenedor
	Ejecuta el comando, pero no se puede visualizar el shell del contenedor ni interactuar con él.

2. ¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
	Sirve para iniciar el interprete de comando bash dentro del contedor.
	"Docker ps" muestra todas las imágenes que se están ejecutando, mientras "docker ps --all" muestra todas las imágenes incluso si no estan en un estado de ejecución


8. comando para ejecutar el contenedor.
	docker run -it irvinstone/orbis-training-docker:0.2.0 bash



Preguntas-5:

1. ¿Cuál es la diferencia entre una imagen y un contenedor?
	el contenedor es la instancia de la imagen.
2. ¿Cómo listo las imágenes que hay en mi computadora?
	docker images
3. ¿Cómo salgo de un contenedor de docker?
	exit
4. ¿Se elimina el contenedor al salir de ella?
	No completamente, solo cambia de estado a exited
5. ¿Cómo elimino un contenedor?
	docker rm <ID_CONTAINER>
6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
	-i : interactive mode
	-t : run shell on container
	--rm: elimina el contenedor al salir de este.
7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
	instanciando el contenedor y listando en el directorio
8. ¿Cómo se comenta una linea de código en Dockerfile?
	'#' al inicio de una linea



Preguntas-6:
1. ¿Qué es NGINX?
	NGNINX es un servidor web que por defecto escucha el puerto 80

2. ¿Cómo expongo puertos en docker?
	En el archivo Dockerfile incluir la palabra reservada EXPOSE seguida del nùmero de puerto. Ejemplo : 'EXPOSE: 80 '

3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
	En el comando docker run especificar '-p 80'		

4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
	En el comando docker run especificar '-p 8080:80'




