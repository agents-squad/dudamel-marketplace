# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD). Su objetivo es democratizar el acceso a servicios financieros digitales en el mercado ecuatoriano.

## Stack tecnico

- **Backend**: Node.js / TypeScript, microservicios
- **Mobile**: Android (Kotlin, Jetpack Compose) + iOS (Swift, SwiftUI)
- **Bases de datos**: PostgreSQL (principal), Redis (cache)
- **Infraestructura**: Docker, Kubernetes, AWS
- **CI/CD**: GitHub Actions
- **Observabilidad**: OpenTelemetry, metricas, logs estructurados, traces
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

## Requisitos no funcionales clave

- **Disponibilidad**: 99.9% uptime — es un servicio financiero
- **Latencia**: < 200ms p95 para operaciones core (saldo, transferencias)
- **Seguridad**: PCI-DSS compliance, encryption at rest y in transit, audit logging
- **Escalabilidad**: disenar para 10x crecimiento sin re-arquitectura mayor
- **Regulacion**: cumplimiento con regulaciones financieras ecuatorianas (Superintendencia de Bancos)

## Estandares del equipo

- **Feature lifecycle**: Discovery → Definition (PRD) → Design → Development → QA → Release → Measure
- **Branching**: trunk-based development con feature flags
- **PR process**: al menos 1 review, CI verde, linked to ticket
- **Environments**: dev → staging → production
