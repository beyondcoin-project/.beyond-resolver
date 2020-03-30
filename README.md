# ![image](https://cdn.beyondcoin.io/images/common/dot-beyond.png)

## Beyondcoin .beyond TLD HTTP Resolver API

This repository contains the implementation for a web resolver of .beyond and OpenNIC domains.

## Prerequisites

* [Node.js](https://nodejs.org/) LTS

## Setup

1) Clone this repository to wherever you'd like the API to run:

```bash
git clone https://github.com/beyondcoin-project/.beyond-resolver
```

2) Install the required Node.js modules

```bash
cd .beyond-resolver && npm install
```

3) Use your favorite text editor to change the values as necessary in `config.json`

```javascript
{
  "bindIp": "0.0.0.0",
  "httpPort": 80,
  "corsHeader": "*",
  "dnsServers": [
    "3.81.209.88",
    "54.208.13.17",
    "54.175.30.22"
  ]
}

```

4) Fire up the script

```bash
node index.js
```

5) Optionally, install PM2 or another process manager to keep the service running.

```bash
npm install -g pm2@latest
pm2 startup
pm2 start index.js --name beyond-resolver -i max
pm2 save
```

## API Documentation

See the API documentation (served out of the docs folder) at https://docs.byndnic.com/

###### (c) 2020 The Beyondcoin Developers
