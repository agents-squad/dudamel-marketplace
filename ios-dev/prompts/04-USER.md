# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD). Su objetivo es democratizar el acceso a servicios financieros digitales en el mercado ecuatoriano.

## Stack tecnico iOS

- **Lenguaje**: Swift 5.9+
- **UI**: SwiftUI (pantallas nuevas) + UIKit (modulos legacy)
- **Arquitectura**: MVVM con Clean Architecture (ViewModel + Combine/async-await)
- **Networking**: URLSession + async/await, Codable para serialization
- **DI**: Swift Package-based dependency injection
- **Async**: Structured concurrency (async/await, TaskGroup), Combine para reactive streams legacy
- **Navigation**: NavigationStack (SwiftUI) + Coordinators (UIKit)
- **Testing**: XCTest + Swift Testing, snapshot tests, UI tests con XCUITest
- **CI/CD**: GitHub Actions + Fastlane + TestFlight

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
