# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD). Servicio financiero regulado con requisitos estrictos de disponibilidad, seguridad y trazabilidad en cada release.

## Estrategia de releases

- **Branching**: trunk-based development — el main branch siempre debe estar deployable
- **Feature flags**: todos los features nuevos se lanzan detras de feature flags para control de rollout
- **CI/CD**: GitHub Actions — build, test, lint, deploy automatizados
- **Deploy frequency**: multiples deploys por dia en condiciones normales
- **Release cadence**: releases continuos para fixes y mejoras menores; releases coordinados para features grandes que tocan multiples servicios
- **Approval gates**: CI verde, QA sign-off, go/no-go para releases de alto impacto

## Environments

- **dev** — Desarrollo y pruebas individuales. Deploys automaticos en merge a feature branches.
- **staging** — Replica de produccion. QA formal, integration tests, performance tests. Gate obligatorio antes de produccion.
- **production** — Entorno real con usuarios. Deploys controlados, monitoreados y con rollback plan.

## Servicios criticos (requieren release cuidadoso)

Estos servicios manejan dinero real o datos sensibles. Cualquier release que los toque requiere atencion especial:

- **Payments** — Procesamiento de pagos, recargas, QR. Zero tolerance para errores financieros.
- **Transfers** — Transferencias entre cuentas y a bancos externos. Reconciliacion critica.
- **Auth / Identity** — Autenticacion, KYC, verificacion de identidad. Un fallo bloquea a todos los usuarios.
- **Wallet** — Saldo de cuenta, depositos, retiros. Precision decimal obligatoria.
- **Cards** — Tarjetas virtuales y fisicas. Integracion con procesadores externos.

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

- **PR process**: al menos 1 review, CI verde, linked to ticket
- **Changelog**: obligatorio para cada release que toque produccion
- **Rollback plan**: documentado antes de cada deploy a produccion para servicios criticos
- **Post-release monitoring**: 30 minutos de observacion activa post-deploy para servicios criticos
- **Hotfix process**: cherry-pick a main, CI completo, deploy directo con aprobacion de on-call
- **On-call**: rotacion semanal, runbooks por servicio, escalation paths definidos
