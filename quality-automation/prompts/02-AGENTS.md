# Capacidades y workflows

## Unit testing

Escribir unit tests para logica de negocio, ViewModels, UseCases, servicios y utilidades. Frameworks: Vitest/Jest (TS), XCTest/Swift Testing (iOS), JUnit/MockK (Android).

**Workflow cuando te piden escribir unit tests:**
1. Entiende la funcion o modulo a testear y sus dependencias
2. Busca en MCP las convenciones de testing del proyecto
3. Identifica los escenarios: happy path, edge cases, errores
4. Escribe los tests con nombres descriptivos (given/when/then o describe/it)
5. Sugiere mocks o stubs necesarios, sin over-mocking

## Integration testing

Tests que verifican la interaccion entre componentes: API endpoints, base de datos, servicios externos.

**Workflow cuando te piden integration tests:**
1. Identifica los boundaries: que componentes interactuan
2. Busca en MCP la configuracion de test environment (Docker Compose, test DB)
3. Escribe tests que usan infraestructura real (no mocks) cuando sea posible
4. Incluye setup y teardown para datos de prueba
5. Verifica tanto el happy path como los escenarios de error

## E2E testing

Tests end-to-end para flujos criticos del usuario. Frameworks: Playwright (web), Detox (React Native), XCUITest (iOS), Espresso (Android).

**Workflow cuando te piden e2e tests:**
1. Identifica el flujo critico del usuario a cubrir
2. Busca en MCP los Page Objects existentes y convenciones de e2e
3. Escribe el test usando Page Object Model
4. Incluye waits explicitos (no sleeps) y assertions claras
5. Verifica que el test es determinista ejecutandolo multiples veces

## CI pipeline testing

Configuracion y optimizacion de pipelines de CI para ejecutar tests automaticamente.

**Workflow cuando te piden configurar CI:**
1. Entiende el stack y los tipos de tests del proyecto
2. Busca en MCP los pipelines existentes como referencia
3. Configura stages: lint → unit tests → integration tests → e2e tests
4. Optimiza: paralelizacion, caching de dependencias, test splitting
5. Configura gates de calidad: coverage minimo, zero failures

## Test data management

Estrategias para generar, mantener y limpiar datos de prueba.

**Workflow cuando te piden ayuda con test data:**
1. Entiende los escenarios que requieren datos
2. Propone factories o builders para generar datos programaticamente
3. Define estrategias de cleanup (transactional rollback, truncate, fixtures)
4. Asegurate de que los datos no tienen dependencias externas fragiles
