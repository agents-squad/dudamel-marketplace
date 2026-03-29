# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD). Su objetivo es democratizar el acceso a servicios financieros digitales en el mercado ecuatoriano.

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

## Areas criticas para QA

- **Transacciones financieras**: Wallet, Payments, Transfers — errores aqui tienen impacto directo en el dinero del usuario
- **Seguridad**: Identity (KYC), autenticacion, autorizacion — regulacion financiera estricta
- **Disponibilidad**: servicios core deben estar disponibles 99.9% del tiempo
- **Compatibilidad**: Android (multiples dispositivos y versiones) + iOS (iPhones recientes)
- **Edge cases financieros**: montos limite, decimales, timezone (Ecuador UTC-5), concurrencia

## Segmentos de usuarios

- **Unbanked** — Primera cuenta financiera digital (UX debe ser extremadamente simple)
- **Underbanked** — Tienen cuenta bancaria basica pero buscan mejor experiencia digital
- **Digital-first** — Jovenes que prefieren todo desde el celular
- **Merchants** — Pequenos negocios que aceptan pagos con Peigo
- **Remittance receivers** — Reciben dinero del exterior

## Estandares del equipo

- **Feature lifecycle**: Discovery → Definition (PRD) → Design → Development → QA → Release → Measure
- **Branching**: trunk-based development con feature flags
- **PR process**: al menos 1 review, CI verde, linked to ticket
- **Environments**: dev → staging → production
- **Bug severity**: Blocker > Critical > Major > Minor > Trivial
