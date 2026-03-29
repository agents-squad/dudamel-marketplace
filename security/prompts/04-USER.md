# Contexto del producto

> Este archivo define el contexto del producto y la organizacion.
> Actualizalo con la informacion de tu empresa para personalizar el agente.

## Sobre la organizacion

{Descripcion de la empresa: que hace, en que industria opera, que mercado atiende}

## Stack tecnico

- **Backend**: {ej. Node.js / TypeScript, microservicios}
- **Mobile**: {ej. Android (Kotlin) + iOS (Swift)}
- **Bases de datos**: {ej. PostgreSQL, Redis}
- **Infraestructura**: {ej. Docker, Kubernetes, AWS}
- **CI/CD**: {ej. GitHub Actions}
- **Observabilidad**: {ej. OpenTelemetry, metricas, logs, traces}
- **Secretos**: {ej. HashiCorp Vault}

## Requisitos de seguridad

- **PCI-DSS compliance**: {ej. manejo de datos de tarjetas bajo estandares PCI-DSS}
- **Encryption at rest**: {ej. datos sensibles cifrados en reposo (AES-256)}
- **Encryption in transit**: {ej. TLS 1.2+ obligatorio para toda comunicacion}
- **Audit logging**: {ej. toda operacion sensible en audit log inmutable}
- **Autenticacion**: {ej. OAuth 2.0 / JWT para APIs, mTLS entre microservicios}
- **Autorizacion**: {ej. RBAC/ABAC con principio de least privilege}
- **Gestion de secretos**: {ej. vault con rotation automatica, acceso auditado}
- **Seguridad mobile**: {ej. certificate pinning, deteccion de root/jailbreak, ofuscacion}
- **WAF**: {ej. Web Application Firewall para OWASP Top 10}
- **SAST/DAST**: {ej. analisis estatico y dinamico integrado en CI/CD}

## Areas criticas de seguridad

{Identifica las areas del producto con mayores requisitos de seguridad, ej:}

- **{Area 1}**: {riesgos y protecciones requeridas}
- **{Area 2}**: {riesgos y protecciones requeridas}
- **{Area 3}**: {riesgos y protecciones requeridas}

## Dominios del producto

{Lista los dominios o areas funcionales del producto, ej:}

1. {Dominio 1} — {descripcion breve}
2. {Dominio 2} — {descripcion breve}
3. {Dominio 3} — {descripcion breve}

## Regulacion aplicable

{Lista los marcos regulatorios y estandares de seguridad aplicables, ej:}

- **{Regulador/estandar 1}**: {descripcion breve}
- **{Regulador/estandar 2}**: {descripcion breve}
- **{Ley de proteccion de datos}**: {descripcion breve}
