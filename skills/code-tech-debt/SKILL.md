---
name: code-tech-debt
description: Identificación, clasificación y plan de reducción de deuda técnica
version: "0.1"
---

# Tech Debt Management

Identificación sistemática, clasificación por impacto/esfuerzo, y planificación de reducción de deuda técnica sin detener la entrega de features. Útil para planning de sprints, roadmap técnico, y evaluación de salud del codebase.

## Alcance

- **Cubre:** inventario de deuda técnica, clasificación por impacto y esfuerzo, priorización, plan de reducción con quick wins y refactors grandes, métricas de progreso
- **No cubre:** ejecución directa de refactoring, configuración de herramientas de análisis estático, gestión de backlog en herramientas de proyecto

## Instrucciones

**Workflow de gestión de deuda técnica:**

1. **Inventariar la deuda** — Identifica los items de deuda técnica existentes:
   - Código duplicado o con baja cohesión
   - Dependencias desactualizadas o con vulnerabilidades
   - Tests faltantes o frágiles
   - Abstracciones incorrectas o prematuras
   - Documentación desactualizada o ausente
   - Workarounds y TODOs acumulados

2. **Clasificar por impacto** — Para cada item, evalúa:
   - **Bloquea features** — ¿Impide o ralentiza el desarrollo de nuevas funcionalidades?
   - **Causa bugs** — ¿Genera errores recurrentes o comportamiento inesperado?
   - **Ralentiza devs** — ¿Aumenta el tiempo de onboarding, debugging, o cambios?
   - **Riesgo operativo** — ¿Puede causar incidentes en producción?

3. **Clasificar por esfuerzo** — Estima el esfuerzo de resolución:
   - **Quick win** — Menos de medio día, sin riesgo
   - **Mediano** — 1-3 días, riesgo bajo
   - **Grande** — Sprint completo o más, requiere planificación

4. **Priorizar** — Usa una matriz impacto/esfuerzo:
   - **Hacer ya** — Alto impacto + bajo esfuerzo (quick wins)
   - **Planificar** — Alto impacto + alto esfuerzo (sprints dedicados)
   - **Oportunista** — Bajo impacto + bajo esfuerzo (junto con features cercanas)
   - **Backlog** — Bajo impacto + alto esfuerzo (monitorear, no priorizar)

5. **Plan de reducción** — Propone:
   - Quick wins inmediatos para el sprint actual
   - Items grandes con sprint dedicado o tiempo reservado (ej: 20% del sprint)
   - Métricas para medir progreso: build time, bug rate, developer velocity, test coverage

**Formato de salida:**

Tabla de inventario con columnas:
| Item | Impacto | Esfuerzo | Prioridad | Acción sugerida |

Seguida de un plan de acción con timeline.

## Criterios de calidad

- [ ] El inventario es exhaustivo y cubre código, dependencias, tests, y documentación
- [ ] Cada item tiene clasificación de impacto y esfuerzo
- [ ] La priorización usa criterios objetivos (matriz impacto/esfuerzo)
- [ ] El plan incluye quick wins inmediatos y items grandes planificados
- [ ] Se definen métricas concretas para medir progreso
- [ ] El plan es realista y no propone detener el delivery de features
