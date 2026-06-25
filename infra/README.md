# Infraestrutura

Esta pasta contém os arquivos de infraestrutura e orquestração local do projeto.

## Docker Compose

O ambiente local é executado com Docker Compose, subindo dois serviços:

- `backend`: API em Django REST
- `frontend`: interface em React + Vite

## Executar pela raiz do projeto

```bash
docker compose -f infra/docker-compose.yml up --build
