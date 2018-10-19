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

12.
	12.1. ¿Es necesario especificar el `workdir` en docker?, ¿Porqué?
				- Sí, de lo contrario muestra error especificando que necesita un $PATH
	12.2. ¿Que hacen los siguientes comandos?
	 -`docker ps`
	 		Lista los contenedor en ejecución
	 -`docker pull`
	 		Trae la imágen o actualiza los cambios locales en la imágen, desde l hub de docker o de un repositorio local
	 -`docker push`
	 		Actualiza los cambios de la imágen en el registry de docker (dockerhub)o en un registry local
	 -`docker rm`
	 		Elimina un contenedor
	 -`docker rmi`
	 		Elimina una imágen
	 -`docker run`
	 		Crea un contenedor a partir de una imágen (dockerhub) o docker file
	 -`docker tag`
	 		Etiqueta una versión para la imágen
	 -`docker search`
	 		Busca una imágen en un registry de docker o en un registry local
	 -`docker login`
	 		Comando interactivo para ingresar credenciales de nuestro usuario de docker hub
	 -`docker exec`
	 		Ejecuta una comando en un contenedor en ejecución
	 -`docker build`
	 		Construye una imágen en base al dockerfile
	 -`docker inspect`
	 		Inspecciona y detalla información de un contenedor o una red
	 -`docker network`

	 13.
	 		Comando para crear y gestionar redes de docker
			13.1. ¿Qué es bash? ¿Qué significa?
						Bash es un interprete de comandos, (Bourne-again shell)
			13.2. ¿Cómo ejecuto un archivo bash?
						Primero otorgar permisos de ejeción (755)
						Existen dos maneras :
							- Cuando no se específica interprete en el script
								sh archivo.sh
								bash archivo.sh
								zsh archivo.sh
							- Cuando se especifica interprete en el script
								./archivo.sh
			13.3. ¿Qué pasa si no especifico en un `.sh`, la linea `#!/bin/bash`?
						No se especifica el interprete por lo tanto cuando se llama al archivo "./example.sh" no encontrará manera de ejecutarlo, sin embargo si antes de ejecutar le das el interprete lo ejecuta : "bash example.sh"
			13.4. ¿Se puede cambiar el modo bash (`/bin/bash`) a otro tipo de ejecución?
						Sí, se pueden utilizar los interpretes que estén instalados en la computadora
			13.5. ¿Cómo se envía variables de entorno por Docker CLI y docker-compose?

# TALLER JENKINS

## PARTE 1

			- ¿Qué significa el comando -d?
			  Verifica la existencia de un directorio
			- ¿Porqué la sentencia comienza con @?
			  Para ocultar la salida de la ejecución del proceso y solo mostrar el resultado
			- ¿Para qué sirve el comando mkdir?
			  Crear directorio
			- Explicar lo que hace la función mkdir_deploy_dir
			  Verifica la existencia del directorio deploy/build, si no existe lo crea


			- ¿Para qué sirve el uso de \?
				Para hacer de línea sin afectar la correlatividad del comando
			- ¿Para qué sirve el uso de &&?
				Concadena comandos y ejecuta
			- ¿Qué función cumple Explicar lo que hace la función create_branch_gh_pagesusar los argumentos -rf?
				r : Recursivo
				f : Forzado
			- Explicar lo que hace la función git_init (linea por linea)
				Se dirige al directorio "deploy/gh-pages"
				Elimina .git de manera recursiva y formzada si existe el directorio y vuelve a iniciar el repositorio


			- ¿Para qué sirve el uso de eval?
				Sirve para declarar variables que solo se utilizarán dento de la función.
			- ¿Para qué sirve el uso de shell?
				Utiliza recursos que existen fuera del makefile.
			- ¿Para qué sirve el uso de git log --pretty=format:"%an"?
				Muestra los nombre de el historia de logs del repositorio mediante el uso de "%an"
			- ¿Cuál es la diferencia en usar git config y git config --global?
				Git config --global envía la configuración a ""~/.gitconfig"  que se utiliza de manera global mientras git config a .git/config solo a la configuración del repositorio
			- Explicar lo que hace la función git_config (línea por línea)
				Inicializa las variables mediante EVAL y el uso de shell para capturar los nombres de usuario y correos del log de commits del reposotorio, se mueve al directorio nuevo y configura el usuario y el correo con los antes capturados


			-	¿Para qué sirve el uso de awk?
				Se utiliza para procesar texto
			-	¿Para qué sirve el uso de sed?
				Para reemplazar texto
			-	¿Para qué sirve el uso de git log --pretty=format:"%an"?
				Muestra los nombre de el historia de logs del repositorio mediante el uso de "%an"
			-	Explicar lo que hace la función git_add_remote_repository
				Captura el nombre del repositorio origin, luego imprime ese nombre y en esa salida reemplaza el protocolo por la variable global GIT_PERSONAL_TOKEN para luego dirigirse al nuevo directorio y agregar un origin remoto


			- Explicar lo que hace la función create_branch_gh_pages
				Se dirige al directorio  deploy/gh-pages y crea una rama a partir de la rama master


			- Explicar lo que hace la función copy_files_to_deploy
				Copia todos los archivos de la carpeta deploy/build a la carpeta deploy/gh-pages

			- Explicar lo que hace la función git_add
				Se dirige a la carpeta deploy/gh-pages, para agregar seguimiento a todos los archivos del repositorio y luego ejecuta git status


			- Explicar lo que hace la función create_commit (línea por línea)			


			- Explicar lo que hace la función git_push (línea por línea)


			- Explicar lo que hace la función clean_workspace
