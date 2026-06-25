# Case Técnico - Intelbras

Este repositório centraliza a documentação e a infraestrutura do projeto desenvolvido para o desafio técnico da Intelbras.

O código da aplicação foi dividido em repositórios independentes para facilitar a manutenção e refletir uma arquitetura mais próxima de projetos reais.

---

# Arquitetura do Projeto

```
case-intelbras/
├── backend/      # API Django REST
├── frontend/     # Interface React + Vite
└── infra/        # Docker Compose e infraestrutura
```

---

# Repositórios

## Backend

API desenvolvida em Django REST Framework.

> https://github.com/misaaael/backend-django

---

## Frontend

Interface desenvolvida em React + Vite.

> https://github.com/misaaael/front-react

---

# Tecnologias

### Backend

- Python
- Django

### Frontend

- React
- Vite
- TypeScript

### Infraestrutura

- Docker
---

# Executando o projeto

## Pré-requisitos

- Docker
- Docker Compose

Clone os três repositórios mantendo esta estrutura:

```
case-intelbras/
├── backend/
├── frontend/
└── infra/
```

Execute:

```bash
docker compose -f infra/docker-compose.yml up --build
```

Frontend

```
http://localhost:5173
```

Backend

```
http://localhost:8000
```

API

```
http://localhost:8000/api/devices/
```

Para encerrar:

```bash
docker compose -f infra/docker-compose.yml down
```

---

# Estrutura da Infraestrutura

A pasta `infra/` contém a orquestração local da aplicação através do Docker Compose.

Esta estrutura foi criada para facilitar uma futura migração para serviços de nuvem, como AWS ECS/Fargate, mantendo frontend e backend desacoplados.


---

# Autor

Ian Reis
