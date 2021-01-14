# EOS Docker

Minimilistic Framework for Developing EOSIO Smart Contracts using Docker.

This project allows you to easily boot up a local EOSIO 2.0 chain for contract development.

When developing smart contracts you don't really to deploy the platform contracts that control resources (CPU, RAM, NET) and block producer votes, a "bare" chain gives you unlimited resources and all the APIs required for development.  

Basic knowledge of Docker and Docker-Compose is required to fully understand this setup, which is really helpful to keep the development environment consistent across machines ( including windows systems ) and allows teams quickly share and start up ephimeral development environments.

Handy commands are provided to interact with docker and the local chain, the names of the scripts should be self-explantory.
You can use the file `services/eosio/scripts/accounts.json` to seed accounts by running `yarn boot` or `yarn setup` commands. 

Once you boot a chain can interact with using the `yarn cleos` command or directly from the host machine using `cleos`, docker exposes the EOSIO api on `localhost:8888` and it's accesible from the host machine.  

## Dependencies

- Docker
- Docker Compose
- NodeJS, npm or yarn. We recommend using `nvm` to manage your nodejs versions. 
## Usage

Use yarn scripts:

```
"boot": "yarn up; sleep 10; yarn setup",
"up": "docker-compose up -d",
"down": "yarn stop; docker-compose down",
"start": "docker-compose start && docker exec -d eosdocker_eosio ./scripts/start.sh",
"stop": "docker exec -i eosdocker_eosio ./scripts/stop.sh && docker-compose stop",
"logs": "docker-compose logs -f",
"flush": "yarn stop; docker-compose down -v",
"build": "docker-compose build --no-cache",
"fresh": "yarn flush && yarn boot",
"ps": "docker-compose ps",
"bash": "docker exec -it eosdocker_eosio bash",
"cleos": "docker exec -it eosdocker_eosio cleos",
"wallet": "docker exec -it eosdocker_eosio cleos wallet",
"wallet:unlock": "docker exec -i eosdocker_eosio ./scripts/unlock.sh",
"get_info": "docker exec -it eosdocker_eosio cleos get info",
"setup": "docker exec -i eosdocker_eosio ./scripts/setup.sh"
```

## Local Block Explorer

You can use http://local.bloks.io or [EOSIO/eosio-explorer](https://github.com/EOSIO/eosio-explorer)

## Tykhon

Tychon or Tykhon (Τυχων, Tykhôn = "producer") is the name of a minor deity in Greek mythology who was a daemon of fertility.

https://en.wikipedia.org/wiki/Tychon


## Blockmatic

Blockmatic is building a robust ecosystem of people and tools for the development of blockchain applications.

[blockmatic.io](https://blockmatic.io)

<!-- Please don't remove this: Grab your social icons from https://github.com/carlsednaoui/gitsocial -->

<!-- display the social media buttons in your README -->

[![Blockmatic Twitter][1.1]][1]
[![Blockmatic Facebook][2.1]][2]
[![Blockmatic Github][3.1]][3]

<!-- links to social media icons -->
<!-- no need to change these -->

<!-- icons with padding -->

[1.1]: http://i.imgur.com/tXSoThF.png (twitter icon with padding)
[2.1]: http://i.imgur.com/P3YfQoD.png (facebook icon with padding)
[3.1]: http://i.imgur.com/0o48UoR.png (github icon with padding)

<!-- icons without padding -->

[1.2]: http://i.imgur.com/wWzX9uB.png (twitter icon without padding)
[2.2]: http://i.imgur.com/fep1WsG.png (facebook icon without padding)
[3.2]: http://i.imgur.com/9I6NRUm.png (github icon without padding)


<!-- links to your social media accounts -->
<!-- update these accordingly -->

[1]: http://www.twitter.com/blockmatic_io
[2]: http://fb.me/blockmatic.io
[3]: http://www.github.com/blockmatic

<!-- Please don't remove this: Grab your social icons from https://github.com/carlsednaoui/gitsocial -->



