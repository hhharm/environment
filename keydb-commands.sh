#use keydb with docker
docker run --name keydb -p 6379:6379 -d eqalpha/keydb

keydb-cli
keys *
lrange ITEM 0 -1
zrange ITEM 0 -1 WITHSCORES
