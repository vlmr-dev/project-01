# Infraestrutura Docker para Evolution API + n8n

Este projeto utiliza **Docker Compose** para orquestrar uma stack com os seguintes servicos:

- [x] Redis (com autenticacao)
- [x] PostgreSQL (persistente e configuravel via `.env`)
- [x] [n8n](https://n8n.io) (automacao low-code)
- [x] [Evolution API](https://github.com/evolution-api/evolution-api)

---

## Estrutura dos Servicos

### Redis (`redis-db`)
- Servidor Redis com autenticacao e persistencia.
- Usa configuracao personalizada com suporte a AOF (`appendonly`).
- Porta exposta: `6379`

### PostgreSQL (`postgres-db`)
- Banco de dados relacional principal da aplicacao.
- Suporta configuracoes via build args e variaveis de ambiente.
- Porta exposta: `5432`

### n8n (`n8n`)
- Ferramenta de automacao de fluxos de trabalho.
- Persistencia em volume local (`n8n_data`).
- Configurado para rodar na timezone `America/Sao_Paulo`.
- Porta exposta: `5678`

### Evolution API (`evolution_api`)
- API principal baseada na [evolution-api](https://github.com/evolution-api/evolution-api).
- Depende de Redis, PostgreSQL e n8n.
- Porta exposta: `8080`

---

## Pre-requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
