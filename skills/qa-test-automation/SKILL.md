---
name: qa-test-automation
description: Pirámide de testing (unit > integration > e2e), Page Object Model, test data management, CI integration
version: "0.1"
---

# Test Automation

Estrategias y patrones de automatización de pruebas siguiendo la pirámide de testing. Útil para definir estrategia de automatización, escribir tests en cualquier nivel, y configurar ejecución en CI.

## Alcance

- **Cubre:** pirámide de testing (unit > integration > e2e), patterns (Page Object Model, factories), selección de frameworks, test data management, integración con CI, métricas de automatización
- **No cubre:** testing manual, selección de herramientas de gestión de tests, infraestructura de CI/CD

## Instrucciones

**Workflow de automatización de pruebas:**

1. **Evaluar estado actual** — Identifica:
   - ¿Qué está automatizado y qué no?
   - ¿Qué frameworks se usan? (Jest, Vitest, XCTest, JUnit, Playwright, Detox, Espresso)
   - ¿Cuál es la cobertura actual por nivel?
   - ¿Hay tests flaky o lentos?

2. **Definir estrategia con la pirámide de testing:**
   - **Unit tests (base, más cantidad):**
     - Lógica de negocio, ViewModels, UseCases, servicios, utilidades
     - Rápidos (<1s cada uno), sin dependencias externas
     - Mocks/stubs para dependencias, sin over-mocking
     - Naming descriptivo: `given_[contexto]_when_[acción]_then_[resultado]`
   - **Integration tests (medio):**
     - Interacción entre componentes: API endpoints, base de datos, servicios
     - Usar infraestructura real cuando sea posible (Docker, test DB)
     - Setup/teardown para datos de prueba
     - Verificar happy path y escenarios de error
   - **E2E tests (cima, menor cantidad):**
     - Solo flujos críticos del usuario
     - Page Object Model para encapsular la UI
     - Waits explícitos (no sleeps), assertions claras
     - Tests deterministas (ejecutar múltiples veces para verificar)

3. **Identificar tests de mayor ROI:**
   - Flujos críticos más usados (login, pagos, flujo principal)
   - Áreas con historial de bugs frecuentes
   - Código que cambia frecuentemente
   - Tests que consumen más tiempo manual

4. **Implementar test data management:**
   - Factories/builders para generar datos programáticamente
   - Datos independientes entre tests (no compartir estado)
   - Estrategias de cleanup: transactional rollback, truncate, fixtures
   - No depender de datos externos frágiles

5. **Integrar con CI:**
   - Stages: lint → unit tests → integration tests → e2e tests
   - Paralelización de tests para reducir tiempo
   - Caching de dependencias
   - Quality gates: coverage mínimo, zero failures
   - Reportes de test results y coverage en el PR

6. **Métricas de automatización:**
   - Test coverage por nivel (unit, integration, e2e)
   - Tiempo de ejecución del suite completo
   - Flaky test rate (tests que fallan intermitentemente)
   - Ratio automatizado vs manual

## Criterios de calidad

- [ ] La estrategia sigue la pirámide (más unit, menos e2e)
- [ ] Los tests de mayor ROI están priorizados
- [ ] Los tests son independientes y no comparten estado
- [ ] El test data management usa factories (no datos hardcoded)
- [ ] La integración con CI incluye quality gates
- [ ] Los tests e2e usan Page Object Model
- [ ] No hay sleeps en los tests (usar waits explícitos)
