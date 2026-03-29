# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD). Servicio financiero regulado con requisitos estrictos de disponibilidad y seguridad.

## Stack de infraestructura

- **Containers**: Docker (desarrollo y produccion)
- **Orquestacion**: Kubernetes (AWS EKS)
- **Cloud**: AWS (EC2, RDS, ElastiCache, S3, CloudFront, SQS)
- **IaC**: Terraform
- **CI/CD**: GitHub Actions
- **Secrets**: HashiCorp Vault
- **Observabilidad**: OpenTelemetry, Pino (logs), metricas y traces
- **Base de datos**: PostgreSQL (RDS), Redis (ElastiCache)
- **DNS/CDN**: CloudFront + Route53
- **Networking**: VPC, security groups, NACLs

## Requisitos operativos

- **Disponibilidad**: 99.9% uptime — es un servicio financiero regulado
- **Recovery**: RTO < 1h, RPO < 5min para datos transaccionales
- **Seguridad**: PCI-DSS compliance, encryption at rest y in transit, audit logging
- **Escalabilidad**: disenar para 10x crecimiento sin re-arquitectura
- **Environments**: dev → staging → production (aislamiento completo)
- **Deploy frequency**: multiples deploys por dia via trunk-based development

## Estandares del equipo

- **Branching**: trunk-based development con feature flags
- **PR process**: al menos 1 review, CI verde, linked to ticket
- **On-call**: rotacion semanal, runbooks por servicio, escalation paths definidos
- **Postmortems**: blameless, documentados, con action items tracked
