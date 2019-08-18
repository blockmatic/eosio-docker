# EOS Docker

Minimilistic Framework for Developing EOSIO Smart Contracts using Docker.


Use yarn scripts:

```
"up": "docker-compose up -d",
"down": "yarn stop; docker-compose down",
"start": "docker-compose start && docker exec -d eosdocker_eosio ./scripts/start.sh",
"stop": "docker exec -i eosdocker_eosio ./scripts/stop.sh && docker-compose stop",
"logs": "docker-compose logs -f",
"flush": "yarn stop; docker-compose down -v",
"build": "docker-compose build --no-cache",
"fresh": "yarn flush && yarn up",
"ps": "docker-compose ps",
"bash": "docker exec -it eosdocker_eosio bash",
"cleos": "docker exec -it eosdocker_eosio cleos",
"wallet": "docker exec -it eosdocker_eosio cleos wallet",
"wallet:unlock": "docker exec -i eosdocker_eosio ./scripts/unlock.sh",
"info": "docker exec -it eosdocker_eosio cleos get info",
"setup": "docker exec -i eosdocker_eosio ./scripts/setup.sh"
```

### Block Explorer

You can use http://local.bloks.io or [EOSIO/eosio-explorer](https://github.com/EOSIO/eosio-explorer)
