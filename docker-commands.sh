docker container ls -a
docker container start CONTAINERID
docker exec -it CONTAINERID //bin//bash
#(//bin//bash in git for windows, /bin/bash in powershell)

docker image ls
docker run NAME:TAG

docker container stop CONTAINERID
docker container rm CONTAINERID

ping host.docker.internal
#(use host.docker.internal instead of localhost)

#(if npm ci hangs inside docker - use PowerShell!)


docker image build -t NAME:TAG --file=FILESDIR .\
docker run --name=kreader1_5 -d -v  FILESDIR\:app -p 9230:9230 -p 4004:4004 NAME:TAG
