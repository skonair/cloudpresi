from alpine:latest

run apk update 
run apk add nodejs
run apk add nodejs-current-npm
run npm i -g http-server

workdir /home
add ./content /home

cmd ["http-server"]

expose 8080
