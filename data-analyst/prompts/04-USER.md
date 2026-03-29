# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD).

## Base de datos

- **Engine**: PostgreSQL (AWS RDS)
- **ORM**: Drizzle ORM (TypeScript)
- **Cache**: Redis (ElastiCache)
- **Schemas**: definidos en `packages/core/src/db/schema.ts`

## Dominios y tablas principales

1. **Wallet** — cuentas, balances, movimientos
2. **Payments** — transacciones de pago, servicios, recargas
3. **Cards** — tarjetas, activaciones, bloqueos
4. **Transfers** — transferencias internas y externas
5. **Identity** — usuarios, KYC, verificaciones
6. **Loyalty** — puntos, canjes, niveles
7. **Campaigns** — notificaciones, push, promociones

## KPIs principales

- **Activation**: registro completado, first transaction rate, time to first value
- **Engagement**: MAU/DAU, transacciones por usuario, session frequency
- **Transactions**: volumen total, ticket promedio, mix por tipo
- **Revenue**: revenue per user, interchange fees, float income
- **Retention**: churn rate, retention curves (D7, D30, D90)
- **Unit economics**: LTV, CAC, LTV/CAC ratio, payback period

## Segmentos de usuarios

- **Unbanked** — Primera cuenta financiera digital
- **Underbanked** — Cuenta bancaria basica, buscan mejor experiencia
- **Digital-first** — Jovenes mobile-first
- **Merchants** — Pequenos negocios
- **Remittance receivers** — Reciben dinero del exterior
