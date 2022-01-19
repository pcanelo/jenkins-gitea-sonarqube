# OJO
# se corre solo la primera vez o cuando quieras rehacer tu sonarqube
# si lo vuelves a corres te quedas sin la data que habias configurado, ojo ahí

sudo rm sonar -r
mkdir -p sonar/sonarqube-data
mkdir -p sonar/sonarqube-extensions
mkdir -p sonar/sonarqube-conf
mkdir -p sonar/sonarqube-logs
mkdir -p sonar/sonarqube-bundled-plugins