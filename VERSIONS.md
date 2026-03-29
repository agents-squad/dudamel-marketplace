# Versiones de agentes

## Convención de versionamiento

- Cada agente tiene su propia versión independiente en `agent.yaml`
- Las versiones siguen semver simplificado: `MAJOR.MINOR` (ej. `0.1`, `0.2`, `1.0`)
- Cada versión se marca con un git tag: `{agent-slug}@{version}` (ej. `backend@0.1`)
- `MINOR` sube cuando cambian prompts, capacidades, o configuración del agente
- `MAJOR` sube cuando hay cambios incompatibles (ej. cambio de schema, rename de agente)

## Historial

### 0.1 — Versión inicial genérica (2026-03-29)

Todos los agentes: primera versión con contexto genérico (sin info de empresa específica). Prompts con placeholders para personalización.

Agentes: android-dev, architecture, backend, compliance, customer-success, data-analyst, devops, fraud-analyst, growth, ios-dev, project-manager, quality-assurance, quality-automation, release-manager, security, tech-lead, ux-designer
