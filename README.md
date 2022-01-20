# Welcome
## Docker Compose usando gitea jenkins y sonarqube

Hacer el ciclo completo de creacion de carpetas y subida de docker compose
(necesitas el .env ?) pídelo!!

Despues de clonar ejecutar creacion de carpetas, es solo para orden

Crear volumenes para git, jenkins y sonar (correjir ..)
```sh
bash crea-git-dir.sh
bash crea-jenkins-dir.sh
bash crea-sonar-dir.sh
```
Ejecutar docker compose
```sh
docker-compose up -d
```
Esperar un minuto y verificar que esten los contenedores arriba, por ejemplo 
```sh
docker ps -a 
```
### Dado que está sin proxy se debe probar en forma independiente, 

- localhost:3000  
para gitea que está con SqlLite por lo que debes usar esa configuración

- localhost:9001  
para sonar, configuralo nativo, esta sin base de datos externa, solo usando H2

- localhost:8080/jenkins     
Para jenkins, ya sabes donde sacar la initial key


### Otros comandos docker que te serviran 
```sh
docker-compose stop 
docker-compose down
```
