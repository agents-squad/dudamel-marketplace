# Contexto del producto

> Este archivo define el contexto del producto y la organizacion.
> Actualizalo con la informacion de tu empresa para personalizar el agente.

## Sobre la organizacion

{Descripcion de la empresa: que hace, en que industria opera, que mercado atiende}

## Stack de testing

- **Backend**: {ej. Vitest, supertest (API integration), Docker Compose}
- **Android**: {ej. JUnit 5, MockK, Compose Testing, Espresso (e2e)}
- **iOS**: {ej. XCTest, Swift Testing, XCUITest (e2e)}
- **CI**: {ej. GitHub Actions, paralelizacion por tipo de test}
- **Coverage**: {ej. targets por equipo, reportes en PR comments}

## Flujos criticos a proteger

{Lista los flujos del producto que requieren cobertura de testing prioritaria, ej:}

1. {Flujo 1}: {pasos principales}
2. {Flujo 2}: {pasos principales}
3. {Flujo 3}: {pasos principales}

## Estandares del equipo

- **Feature lifecycle**: {ej. Discovery → Definition → Design → Development → QA → Release → Measure}
- **Testing policy**: {ej. unit tests obligatorios para logica de negocio, integration tests para APIs, e2e para flujos criticos}
- **CI gates**: {ej. coverage minimo, zero test failures, lint verde}
- **Branching**: {ej. trunk-based development con feature flags}
