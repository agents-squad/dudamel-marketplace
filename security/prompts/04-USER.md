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

## Requisitos de seguridad

- **PCI-DSS compliance**: manejo de datos de tarjetas bajo estandares PCI-DSS
- **Encryption at rest**: todos los datos sensibles cifrados en reposo (AES-256)
- **Encryption in transit**: TLS 1.2+ obligatorio para toda comunicacion entre servicios y hacia el exterior
- **Audit logging**: toda operacion financiera y de acceso a datos sensibles debe quedar en audit log inmutable
- **Autenticacion**: OAuth 2.0 / JWT para APIs, mTLS entre microservicios internos
- **Autorizacion**: RBAC/ABAC con principio de least privilege en todos los servicios
- **Gestion de secretos**: HashiCorp Vault con rotation automatica, acceso auditado
- **Seguridad mobile**: certificate pinning, deteccion de root/jailbreak, ofuscacion de codigo
- **WAF**: Web Application Firewall para proteccion contra OWASP Top 10 en endpoints publicos
- **SAST/DAST**: analisis estatico y dinamico integrado en CI/CD pipelines

## Areas criticas de seguridad

- **Payments y Transfers**: operaciones financieras — maxima proteccion contra fraude, inyeccion, y manipulacion de montos
- **Identity y KYC**: datos personales sensibles (cedula, biometria, selfies) — proteccion de PII, compliance con regulacion de datos
- **Auth**: flujos de autenticacion y sesiones — proteccion contra account takeover, credential stuffing, session hijacking
- **Cards**: datos de tarjetas — PCI-DSS scope, tokenizacion, nunca almacenar PAN en texto plano
- **Wallet**: saldos y movimientos — integridad transaccional, proteccion contra race conditions

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

## Regulacion aplicable

- **Superintendencia de Bancos de Ecuador**: regulacion financiera local
- **PCI-DSS**: para manejo de datos de tarjetas
- **Ley Organica de Proteccion de Datos Personales (LOPDP)**: proteccion de datos personales en Ecuador
- **Regulacion de ciberseguridad financiera**: normativas de la Junta de Politica y Regulacion Monetaria y Financiera
