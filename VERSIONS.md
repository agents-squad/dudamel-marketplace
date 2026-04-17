# Versiones de agentes

## Convención de versionamiento

- Cada agente tiene su propia versión independiente en `agent.yaml`
- Las versiones siguen semver simplificado: `MAJOR.MINOR` (ej. `0.1`, `0.2`, `1.0`)
- Cada versión se marca con un git tag: `{agent-slug}@{version}` (ej. `backend@0.1`)
- `MINOR` sube cuando cambian prompts, capacidades, o configuración del agente
- `MAJOR` sube cuando hay cambios incompatibles (ej. cambio de schema, rename de agente)

## Historial

### minor bump — chore: remove bootstrap, heartbeat, and memory prompt files from all agents (2026-04-17)

Agentes: android-dev (0.3), architecture (0.3), backend (0.3), compliance (0.3), customer-success (0.3), data-analyst (0.3), devops (0.3), fraud-analyst (0.3), growth (0.3), ios-dev (0.2), project-manager (0.2), quality-assurance (0.2), quality-automation (0.2), release-manager (0.2), security (0.2), tech-lead (0.2), ux-designer (0.2)

### 0.2 — Agregar sección de limitaciones (2026-03-29)

Se agrega sección "Limitaciones" al prompt 01-SOUL.md de 9 agentes, explicitando qué puede y qué no puede hacer cada agente (acceso a sistemas externos, ejecución de código, etc.).

Agentes: android-dev, architecture, backend, compliance, customer-success, data-analyst, devops, fraud-analyst, growth

### 0.1 — Versión inicial genérica (2026-03-29)

Todos los agentes: primera versión con contexto genérico (sin info de empresa específica). Prompts con placeholders para personalización.

Agentes: android-dev, architecture, backend, compliance, customer-success, data-analyst, devops, fraud-analyst, growth, ios-dev, project-manager, quality-assurance, quality-automation, release-manager, security, tech-lead, ux-designer
