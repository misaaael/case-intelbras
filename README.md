# Case Técnico - Intelbras

Este repositório centraliza a documentação e a infraestrutura do projeto desenvolvido para o desafio técnico da Intelbras.

A solução foi organizada em três partes independentes:

- **Backend:** Django REST Framework
- **Frontend:** React + Vite
- **Infraestrutura:** Docker Compose, Terraform (AWS) e proteção contra bots utilizando Cloudflare Turnstile

---

# Arquitetura

```text
case-intelbras/
├── backend/      # API Django REST
├── frontend/     # Aplicação React
└── infra/        # Docker Compose + Terraform
```

---

# Repositórios

## Backend

API desenvolvida em Django REST Framework.

👉 https://github.com/misaaael/backend-django

## Frontend

Interface desenvolvida em React + Vite.

👉 https://github.com/misaaael/front-react

---

# Stack utilizada

### Backend

- Python
- Django REST Framework
- Gunicorn
- Docker

### Frontend

- React
- Vite
- TypeScript
- Docker

### Infraestrutura

- Terraform
- AWS ECS Fargate
- AWS ECR
- AWS S3
- AWS CloudFront
- AWS Application Load Balancer
- AWS WAF
- AWS CloudWatch
- GitHub Actions (CI/CD)

---

# Executando localmente

## Pré-requisitos

- Docker
- Docker Compose

Estrutura esperada:

```text
case-intelbras/
├── backend/
├── frontend/
└── infra/
```

Suba a aplicação:

```bash
docker compose -f infra/docker-compose.yml up --build
```

Acesse:

| Serviço | URL |
|---------|-----|
| Frontend | http://localhost:5173 |
| Backend | http://localhost:8000 |
| API | http://localhost:8000/api/devices/ |

Para encerrar:

```bash
docker compose -f infra/docker-compose.yml down
```

---

# Arquitetura AWS

A infraestrutura foi provisionada utilizando **Terraform**, contemplando:

- VPC
- Subnets públicas
- Application Load Balancer
- ECS Fargate
- Amazon ECR
- Amazon S3
- Amazon CloudFront
- AWS WAF
- CloudWatch Logs
- IAM Roles para GitHub Actions via OIDC

---

# Principais decisões técnicas

- Separação entre frontend, backend e infraestrutura em repositórios independentes.
- Backend responsável pela integração com a API Intelbras.
- Deploy automatizado utilizando GitHub Actions.
- Infraestrutura totalmente provisionada com Terraform.
- Backend executando com Gunicorn em containers Docker no ECS Fargate.
- Frontend publicado em S3 e distribuído via CloudFront.

---

# Autor

**Ian Reis**
