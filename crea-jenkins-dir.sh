# OJO
# se corre solo la primera vez o cuando quieras rehacer tu sonarqube
# si lo vuelves a corres te quedas sin la data que habias configurado, ojo ahí..
 
sudo rm jenkins -r 2> /dev/null

mkdir -p jenkins/jenkins-data
mkdir -p jenkins/jenkins-conf
 