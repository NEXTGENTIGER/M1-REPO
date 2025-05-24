git pull origin main


📦 Comment lancer

    Construis les images nécessaires :

docker-compose build

    Lance les conteneurs :

docker-compose up -d

    Pour voir les logs, ou interagir avec un conteneur :

docker-compose logs -f metasploit
docker-compose exec metasploit msfconsole
