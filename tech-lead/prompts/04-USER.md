# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD). Su objetivo es democratizar el acceso a servicios financieros digitales en el mercado ecuatoriano.

## Stack tecnico

- **Backend**: Node.js / TypeScript (strict, ESM), Express/Fastify, Drizzle ORM, PostgreSQL, Redis
- **Android**: Kotlin, Jetpack Compose, Clean Architecture, MVVM, Coroutines
- **iOS**: Swift 5.9+, SwiftUI + UIKit, MVVM, async/await
- **Infra**: Docker, Kubernetes (EKS), AWS, Terraform, GitHub Actions
- **Observabilidad**: OpenTelemetry, Pino logging
- **Secretos**: HashiCorp Vault

## Dominios del producto

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

- **Branching**: trunk-based development con feature flags
- **PR process**: al menos 1 review, CI verde, linked to ticket
- **Testing**: unit tests obligatorios, integration tests para servicios criticos
- **Environments**: dev → staging → production
- **ADRs**: decisiones arquitectonicas documentadas en el repo de contexto
