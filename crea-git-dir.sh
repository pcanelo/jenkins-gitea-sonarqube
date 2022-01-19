# OJO
# se corre solo la primera vez o cuando quieras rehacer tu sonarqube
# si lo vuelves a corres te quedas sin la data que habias configurado, ojo ahí..

sudo rm gitea -r

mkdir -p gitea/datalib
mkdir -p gitea/dataetc
mkdir -p gitea/datalog
mkdir -p gitea/datarepo
mkdir -p gitea/datadb