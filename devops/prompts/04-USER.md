# Contexto del producto

> Este archivo define el contexto del producto y la organizacion.
> Actualizalo con la informacion de tu empresa para personalizar el agente.

## Sobre la organizacion

{Descripcion de la empresa: que hace, en que industria opera, que mercado atiende}

## Stack de infraestructura

- **Containers**: {ej. Docker}
- **Orquestacion**: {ej. Kubernetes (EKS)}
- **Cloud**: {ej. AWS (EC2, RDS, ElastiCache, S3, SQS)}
- **IaC**: {ej. Terraform}
- **CI/CD**: {ej. GitHub Actions}
- **Secrets**: {ej. HashiCorp Vault}
- **Observabilidad**: {ej. OpenTelemetry, Pino, metricas y traces}
- **Base de datos**: {ej. PostgreSQL, Redis}
- **DNS/CDN**: {ej. CloudFront + Route53}
- **Networking**: {ej. VPC, security groups, NACLs}

## Requisitos operativos

- **Disponibilidad**: {ej. 99.9% uptime}
- **Recovery**: {ej. RTO < 1h, RPO < 5min para datos criticos}
- **Seguridad**: {ej. compliance con estandares de la industria, encryption, audit logging}
- **Escalabilidad**: {ej. disenar para 10x crecimiento sin re-arquitectura}
- **Environments**: {ej. dev → staging → production (aislamiento completo)}
- **Deploy frequency**: {ej. multiples deploys por dia via trunk-based development}

## Estandares del equipo

- **Branching**: {ej. trunk-based development con feature flags}
- **PR process**: {ej. al menos 1 review, CI verde, linked to ticket}
- **On-call**: {ej. rotacion semanal, runbooks por servicio, escalation paths definidos}
- **Postmortems**: {ej. blameless, documentados, con action items tracked}
