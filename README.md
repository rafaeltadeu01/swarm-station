# swarm-station
Ambiente de Desenvolvimento e Testes de um cluster de swarm

Dedicado para o meu amigo Tonello

## Infraestrutura da implementação deste cluser
```mermaid
graph TD;
    PORTAINER-->MASTER;
    MASTER-->NODE1;
    MASTER-->NODE2;
```

## Procedimento de Instalação
### Comando para instalação do ambiente
```sh
vagrant up
```
### Acesso ao ambiente de Gerenciamento do Cluster pelo Portainer
```sh
http://localhost:9000
```

