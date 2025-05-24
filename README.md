git pull origin main


📦 Comment lancer

    Construis les images nécessaires :

docker-compose build

    Lance les conteneurs :

docker-compose up -d

    Pour voir les logs, ou interagir avec un conteneur :

docker-compose logs -f metasploit
docker-compose exec metasploit msfconsole
┌──(root㉿kali)-[/home/user/M1-REPO]
└─# docker-compose build

WARN[0000] /home/user/M1-REPO/docker-compose.yml: the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion 
[+] Building 21.5s (9/9) FINISHED                                                                                                                                                                                           docker:default
 => [nmapscanner internal] load build definition from dockerfile                                                                                                                                                                      0.0s
 => => transferring dockerfile: 204B                                                                                                                                                                                                  0.0s 
 => [nmapscanner internal] load metadata for docker.io/library/python:3.11-slim                                                                                                                                                       1.2s 
 => [nmapscanner internal] load .dockerignore                                                                                                                                                                                         0.0s
 => => transferring context: 2B                                                                                                                                                                                                       0.0s 
 => CACHED [nmapscanner 1/4] FROM docker.io/library/python:3.11-slim@sha256:dbf1de478a55d6763afaa39c2f3d7b54b25230614980276de5cacdde79529d0c                                                                                          0.0s 
 => [nmapscanner internal] load build context                                                                                                                                                                                         0.0s 
 => => transferring context: 32B                                                                                                                                                                                                      0.0s 
 => [nmapscanner 2/4] RUN apt-get update && apt-get install -y nmap && pip install python-nmap                                                                                                                                       20.0s 
 => [nmapscanner 3/4] WORKDIR /app                                                                                                                                                                                                    0.0s 
 => [nmapscanner 4/4] COPY scanner.py .                                                                                                                                                                                               0.0s 
 => [nmapscanner] exporting to image                                                                                                                                                                                                  0.2s 
 => => exporting layers                                                                                                                                                                                                               0.2s 
 => => writing image sha256:fdad450a442a562065b28c3d8540aceac891133daf140f23002f738e3ce27ee9                                                                                                                                          0.0s 
 => => naming to docker.io/library/m1-repo-nmapscanner                                                                                                                                                                                0.0s 
                                                                                                                                                                                                                                           
┌──(root㉿kali)-[/home/user/M1-REPO]
└─# 
