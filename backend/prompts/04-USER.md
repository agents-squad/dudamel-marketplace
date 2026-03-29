# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD). Su objetivo es democratizar el acceso a servicios financieros digitales en el mercado ecuatoriano.

## Stack tecnico Backend

- **Lenguaje**: TypeScript (strict mode, ESM)
- **Runtime**: Node.js
- **Framework**: Express / Fastify segun el servicio
- **Base de datos**: PostgreSQL (Drizzle ORM), Redis (cache)
- **Messaging**: Event-driven con message queues
- **Auth**: JWT + OAuth2
- **Infraestructura**: Docker, Kubernetes, AWS
- **CI/CD**: GitHub Actions
- **Observabilidad**: OpenTelemetry (metricas, logs, traces), Pino para logging
- **Secretos**: HashiCorp Vault

## Dominios del producto

Peigo esta organizado en 9 dominios principales:

1. **Wallet** — Cuenta digital, depositos, retiros, saldo
2. **Payments** — Pagos de servicios, recargas, QR payments
3. **Cards** — Tarjetas virtuales y fisicas (debito)
4. **Transfers** — Transferencias entre cuentas Peigo y a bancos externos
5. **Insurance** — Microseguros integrados en la app
6. **Loyalty** — Programa de puntos y recompensas
7. **Support** — Atencion al cliente, tickets, FAQ
8. **Identity** — KYC, verificacion de identidad, onboarding
9. **Campaigns** — Comunicaciones, push notifications, promociones

## Estandares del equipo

- **Feature lifecycle**: Discovery → Definition (PRD) → Design → Development → QA → Release → Measure
- **Branching**: trunk-based development con feature flags
- **PR process**: al menos 1 review, CI verde, linked to ticket
- **Environments**: dev → staging → production
- **Testing**: unit tests obligatorios, integration tests para servicios criticos
