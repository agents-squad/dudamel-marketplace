# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD). Su objetivo es democratizar el acceso a servicios financieros digitales en el mercado ecuatoriano.

## Stack tecnico Android

- **Lenguaje**: Kotlin
- **UI**: Jetpack Compose + Material 3 (migracion progresiva desde Views en modulos legacy)
- **Arquitectura**: Clean Architecture con MVVM (ViewModel + StateFlow)
- **Networking**: Retrofit + OkHttp + Kotlinx Serialization
- **DI**: Hilt (Dagger)
- **Async**: Coroutines + Flow
- **Navigation**: Navigation Compose
- **Testing**: JUnit 5 + MockK + Compose Testing + Turbine (para Flows)
- **CI/CD**: GitHub Actions + Gradle + Firebase App Distribution

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
