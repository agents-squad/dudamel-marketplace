# Dudamel Agents Marketplace

Marketplace de agentes de IA especializados y skills reutilizables para equipos de producto y engineering.

## Estructura del repositorio

```
dudamel-agents-marketplace/
├── agents/          # 17 agentes especializados
│   └── {slug}/
│       ├── agent.yaml
│       └── prompts/
│           ├── 01-SOUL.md        # Personalidad y principios
│           ├── 02-AGENTS.md      # Dispatch table de skills
│           ├── 03-TOOLS.md       # Configuración de herramientas MCP
│           ├── 04-USER.md        # Contexto de producto (personalizable)
│           ├── 05-IDENTITY.md    # Formato y estilo de comunicación
│           ├── 06-BOOTSTRAP.md   # Comportamiento de inicialización
│           ├── 07-HEARTBEAT.md   # Comportamientos proactivos
│           └── 08-MEMORY.md      # Sistema de memoria
├── skills/          # 32 skills reutilizables
│   └── {name}/
│       └── SKILL.md              # Instrucciones + frontmatter YAML
├── bundles/         # 17 bundles de distribución
│   └── {slug}/
│       └── bundle.yaml
├── schemas/         # Schemas de validación
│   ├── agent.schema.json
│   ├── skill.schema.json
│   └── bundle.schema.json
├── index.yaml       # Registro central de entidades
├── VERSIONS.md      # Changelog de agentes
└── SKILL-VERSIONS.md # Changelog de skills
```

## Entidades

### Agentes

Cada agente es un asistente de IA especializado con personalidad, principios y un conjunto de skills.

| Agente | Tipo | Skills |
|--------|------|--------|
| tech-lead | Full-coverage | code-review, code-tech-debt, architecture-adr, architecture-trade-off-analysis |
| architecture | Full-coverage | architecture-system-design, architecture-adr, architecture-api-design, architecture-data-modeling, architecture-trade-off-analysis |
| backend | Mixed | backend-api-implementation, backend-microservices, architecture-api-design, architecture-data-modeling, devops-ci-cd |
| devops | Full-coverage | devops-ci-cd, devops-infrastructure, devops-observability, devops-incident-response, security-vulnerability-management |
| security | Full-coverage | security-threat-modeling, security-secure-code-review, security-vulnerability-management, security-architecture-review |
| quality-assurance | Mixed | qa-test-plan, qa-bug-triage, qa-test-automation |
| quality-automation | Mixed | qa-test-automation, qa-test-plan, qa-bug-triage |
| project-manager | Mixed | product-prd-writing, product-user-story, architecture-trade-off-analysis |
| release-manager | Mixed | product-release-management, devops-ci-cd |
| data-analyst | Full-coverage | data-sql-analysis, data-metric-definition |
| growth | Mixed | growth-experiment-design, data-sql-analysis, data-metric-definition |
| ux-designer | Full-coverage | ux-user-research, ux-design-system |
| compliance | Mixed | compliance-regulatory-review, compliance-audit-preparation, security-architecture-review |
| fraud-analyst | Mixed | fraud-rule-design, fraud-investigation, compliance-regulatory-review, data-sql-analysis |
| ios-dev | Consumer-only | code-review, qa-test-plan, qa-bug-triage, qa-test-automation, ux-design-system |
| android-dev | Consumer-only | code-review, qa-test-plan, qa-bug-triage, qa-test-automation, ux-design-system |
| customer-success | Consumer-only | data-metric-definition, ux-user-research |

**Tipos de agente:**
- **Full-coverage**: solo skills primarios (dominio propio)
- **Mixed**: skills primarios + complementarios de otros dominios
- **Consumer-only**: sin skills primarios, consume skills de otros dominios

### Skills

32 skills organizados en 12 dominios:

| Dominio | Skills |
|---------|--------|
| code | code-review, code-tech-debt |
| architecture | architecture-system-design, architecture-adr, architecture-api-design, architecture-data-modeling, architecture-trade-off-analysis |
| backend | backend-api-implementation, backend-microservices |
| devops | devops-ci-cd, devops-infrastructure, devops-observability, devops-incident-response |
| security | security-threat-modeling, security-secure-code-review, security-vulnerability-management, security-architecture-review |
| qa | qa-test-plan, qa-bug-triage, qa-test-automation |
| product | product-prd-writing, product-user-story, product-release-management |
| data | data-sql-analysis, data-metric-definition |
| growth | growth-experiment-design |
| ux | ux-user-research, ux-design-system |
| compliance | compliance-regulatory-review, compliance-audit-preparation |
| fraud | fraud-rule-design, fraud-investigation |

Cada skill tiene:
- **Frontmatter YAML**: nombre, descripción, versión
- **Alcance**: qué cubre y qué no
- **Instrucciones**: workflow paso a paso
- **Criterios de calidad**: checklist de validación

### Bundles

Un bundle empaqueta 1 agente + todos sus skills (primary + complementary) para instalación completa. Hay 1 bundle por agente (17 total).

```yaml
# bundles/backend/bundle.yaml
name: "Backend Bundle"
description: "Agente Backend con skills de implementación de APIs, microservicios..."
version: "0.1"
includes:
  agents:
    - backend
  skills:
    - backend-api-implementation
    - backend-microservices
    - architecture-api-design
    - architecture-data-modeling
    - devops-ci-cd
```

## Versionado

### Formato

`MAJOR.MINOR` simplificado (e.g., `0.1`, `0.2`, `1.0`).

| Bump | Criterio |
|------|----------|
| MINOR | Cambios no-breaking: actualización de prompts, nuevas capacidades, config |
| MAJOR | Cambios breaking: cambio de schema, rename, comportamiento incompatible |

### Versiones independientes

Cada agente, skill y bundle versiona de forma independiente. No hay version global.

### Git tags

```
Agentes:  {slug}@{version}           →  backend@0.2
Skills:   skill/{name}@{version}     →  skill/code-review@0.1
```

### Changelogs

- `VERSIONS.md` — historial de cambios de agentes
- `SKILL-VERSIONS.md` — historial de cambios de skills

## CI/CD

### Workflows automáticos

| Workflow | Trigger | Acción |
|----------|---------|--------|
| `version-bump.yml` | Push a `main` | Detecta cambios, bumps versiones, crea tags, actualiza changelogs |
| `manual-bump.yml` | Dispatch manual | Bump manual de agente o skill específico |
| `pr-preview.yml` | PR a `main` | Comenta en PR con preview de versiones que se bumpearían |

### Detección de bump type

- Commit contiene `BREAKING:` → **MAJOR** bump
- Cualquier otro cambio → **MINOR** bump

### Scripts de automatización

```
.github/scripts/
├── detect-changed-agents.sh      # Detecta agentes modificados entre refs
├── detect-changed-skills.sh      # Detecta skills modificados entre refs
├── bump-version.sh               # Calcula nueva versión MAJOR.MINOR
├── bump-skill-version.sh         # Actualiza versión en SKILL.md
├── update-versions-md.sh         # Inserta entrada en VERSIONS.md
└── update-skill-versions-md.sh   # Inserta entrada en SKILL-VERSIONS.md
```

## Schemas de validación

Los schemas JSON validan la estructura de cada entidad:

- `schemas/agent.schema.json` — valida `agent.yaml`
- `schemas/skill.schema.json` — valida frontmatter de `SKILL.md`
- `schemas/bundle.schema.json` — valida `bundle.yaml`

## Registro central: index.yaml

`index.yaml` es el punto de entrada para consumidores del marketplace. Contiene la lista completa de agentes, skills y bundles con sus versiones y relaciones denormalizadas.

```yaml
agents:
  - slug: backend
    name: Backend
    version: "0.2"
    skills:
      primary: [backend-api-implementation, backend-microservices]
      complementary: [architecture-api-design, architecture-data-modeling, devops-ci-cd]

skills:
  - name: backend-api-implementation
    description: "Implementación de APIs — auth JWT/OAuth2, rate limiting..."
    version: "0.1"

bundles:
  - slug: backend
    name: "Backend Bundle"
    version: "0.1"
    includes:
      agents: [backend]
      skills: [backend-api-implementation, backend-microservices, ...]
```

## Crear nuevos agentes y skills

El repositorio incluye wizards interactivos via Claude Code:

```bash
# Crear un nuevo agente
claude /create-agent

# Crear un nuevo skill
claude /create-skill
```

Estos comandos guían paso a paso la creación de entidades validadas y consistentes con la estructura del marketplace.
