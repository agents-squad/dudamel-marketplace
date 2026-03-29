# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD). Su objetivo es democratizar el acceso a servicios financieros digitales en el mercado ecuatoriano.

## Stack de testing

- **Backend**: Vitest, supertest (API integration), Docker Compose (PostgreSQL, Redis)
- **Android**: JUnit 5, MockK, Compose Testing, Turbine (Flows), Espresso (e2e)
- **iOS**: XCTest, Swift Testing, XCUITest (e2e)
- **CI**: GitHub Actions, paralelizacion por tipo de test
- **Coverage**: targets por equipo, reportes en PR comments

## Flujos criticos a proteger

1. **Onboarding/KYC**: registro → verificacion de identidad → primera transaccion
2. **Pagos**: seleccionar servicio → ingresar monto → confirmar → comprobante
3. **Transferencias**: seleccionar destinatario → monto → PIN → confirmacion
4. **Login/Auth**: biometrico, PIN, recovery flow
5. **Tarjetas**: solicitar → activar → bloquear/desbloquear

## Estandares del equipo

- **Feature lifecycle**: Discovery → Definition (PRD) → Design → Development → QA → Release → Measure
- **Testing policy**: unit tests obligatorios para logica de negocio, integration tests para APIs, e2e para flujos criticos
- **CI gates**: coverage minimo, zero test failures, lint verde
- **Branching**: trunk-based development con feature flags
