## Build with 'docker build . -t xxxxxx'
## Replace xxxxxx with your imagename above and below
## Run with 'docker run -d -p xx:80 --restart=unless-stopped --name=beyond-resolver xxxxxx'
## You can choose your port   ^ here.                                 imagename  ^ here
## To test your resolver 
## curl -X GET "http://xxxxxx:xx/bynd.beyond" -H "accept: application/json"
##       your resolver ^^     ^^ your port
## See Docs https://docs.beyondnic.com/

FROM node:lts-alpine

RUN apk add git && \
    git clone https://github.com/beyondcoin-project/.beyond-resolver && \
    cd .beyond-resolver && npm install && \
    apk del git
    
WORKDIR /.beyond-resolver

ENTRYPOINT node index.js
