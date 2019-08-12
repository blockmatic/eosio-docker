# EOS Docker

Minimilistic Framework for Development EOSIO Smart Contract using Docker


Use yarn scripts:

```
"up": "docker-compose up -d",
"down": "yarn stop; docker-compose down",
"start": "docker-compose start && docker exec -d eosdocker_nodeos ./scripts/start.sh",
"stop": "docker exec -i eosdocker_nodeos ./scripts/stop.sh && docker-compose stop",
"logs": "docker-compose logs -f",
"flush": "yarn stop; docker-compose down -v",
"rebuild": "docker-compose build --no-cache",
"fresh": "yarn flush && yarn up",
"ps": "docker-compose ps",
"bash": "docker exec -it eosdocker_nodeos bash",
"cleos": "docker exec -it eosdocker_nodeos cleos",
"info": "docker exec -it eosdocker_nodeos cleos get info",
"accounts": "docker exec -i eosdocker_nodeos ./scripts/create_accounts.sh",
"setup": "docker exec -i eosdocker_nodeos ./scripts/setup.sh"
```