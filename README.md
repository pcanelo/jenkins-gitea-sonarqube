# Welcome amigos mios
## Docker Compose usando gitea jenkins sonarqube nexus

Entorno creado para hacer un ciclo completo de DevOps CI/CD.
Gitea esta usando Sqllite, sin embargo podría ser  mysql, oracle, postgres

Los volumenes son volumes nombrados, eso te servirá por si quieres borrar otros volumenes y quieres mantener los de este entorno, debes usar el rm con filter o usar un script con foreach para discriminarles.

Ejecutar docker compose
```sh
docker-compose up -d
```
El siguiente será el último message e indica que terminó la instanciación de objetos 

#### nexus            Started Sonatype Nexus OSS 3.37.3-02





Esperar un minuto y verificar que esten los contenedores arriba, por ejemplo 
```sh
docker ps -a 
```
### Dado que está sin proxy se debe probar en forma independiente, 

- localhost:3000  
para gitea que está con SqlLit3 por lo que debes usar esa configuración, el primer usuario que creas pasa a ser el administrador

- localhost:9001  
para sonar, configuralo nativo, esta sin base de datos externa, solo usando H2

- localhost:8080/jenkins     
Para jenkins, ya sabes donde sacar la initial key

- localhost:8081/     
Para nexus, la clave inicial tambien es indicada en la instalacion



### Otros comandos docker que te serviran 
```sh
docker-compose stop 
docker-compose down
docker volume ls --filter  name=^nombre-de-tu-carpeta
```
### Script para disciminar volumenes  
```sh
for vl in $(docker volume list) ; do
    echo "VOLUMNE: es $vl"
done
```
poner un if y usar substr  o funcional...
