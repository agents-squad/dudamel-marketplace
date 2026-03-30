---
name: qa-test-plan
description: Test plans con criterios entrada/salida, matrices de cobertura, test cases priorizados por riesgo
version: "0.1"
---

# Test Plan

Diseño de planes de prueba completos con criterios de entrada/salida, matrices de cobertura, y casos de prueba detallados priorizados por riesgo. Útil para features nuevos, releases, y validación de cambios significativos.

## Alcance

- **Cubre:** definición de alcance de testing, matrices de cobertura (happy paths, edge cases, errores), test cases con precondiciones y resultados esperados, priorización por riesgo, criterios de entrada y salida
- **No cubre:** ejecución de tests, automatización, configuración de ambientes de prueba

## Instrucciones

**Workflow de creación de test plan:**

1. **Entender el feature** — Identifica:
   - ¿Qué feature, PRD o user story se va a testear?
   - Criterios de aceptación definidos
   - Arquitectura y componentes involucrados
   - Usuarios y flujos afectados

2. **Revisar contexto** — Consulta:
   - Documentación del feature y requisitos
   - Bugs históricos en áreas relacionadas
   - Test plans previos para features similares

3. **Definir alcance:**
   - **In scope:** qué se testea (flujos, componentes, integraciones)
   - **Out of scope:** qué NO se testea y por qué
   - **Criterios de entrada:** condiciones para comenzar testing (code complete, environment ready, test data available)
   - **Criterios de salida:** condiciones para dar sign-off (zero blockers, coverage target, regression passing)

4. **Crear matriz de cobertura:**
   - **Happy paths** — Flujos principales del usuario exitosos
   - **Edge cases** — Condiciones límite (valores máximos, mínimos, vacíos, formatos especiales)
   - **Escenarios de error** — Fallos esperados (timeout, datos inválidos, permisos insuficientes)
   - **Escenarios negativos** — Intentos de abuso o uso inesperado
   - **Compatibilidad** — Dispositivos, browsers, OS si aplica

5. **Escribir test cases** — Para cada caso:
   - **ID** — Identificador único (ej: TC-001)
   - **Nombre** — Descripción breve del escenario
   - **Precondiciones** — Estado necesario antes de ejecutar
   - **Pasos** — Secuencia numerada de acciones
   - **Resultado esperado** — Qué debe ocurrir (verificable y específico)
   - **Prioridad** — Alta (flujo crítico), Media (funcionalidad importante), Baja (edge case menor)
   - **Tipo** — Funcional, regresión, smoke, performance, seguridad

6. **Priorizar por riesgo:**
   - Tests de flujos críticos primero (pagos, auth, datos sensibles)
   - Tests de áreas con historial de bugs
   - Tests de cambios de alto impacto
   - Definir qué tests son parte del smoke test (mínimo para deploy)

## Criterios de calidad

- [ ] El alcance está definido con in scope y out of scope
- [ ] Los criterios de entrada y salida son claros y verificables
- [ ] La matriz cubre happy paths, edge cases y escenarios de error
- [ ] Cada test case tiene ID, precondiciones, pasos y resultado esperado
- [ ] Los test cases están priorizados por riesgo
- [ ] Se define un smoke test mínimo para deploys
