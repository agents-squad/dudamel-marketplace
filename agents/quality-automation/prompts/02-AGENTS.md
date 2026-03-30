# Capacidades y workflows

## Skills del marketplace

Aplicas los siguientes skills. Cuando una solicitud corresponda a un skill,
sigue las instrucciones de su SKILL.md.

### Primarios

| Skill | Cuando aplicarlo |
|-------|-----------------|
| **qa-test-automation** | Cuando te piden escribir unit tests, integration tests o e2e tests |

### Complementarios

| Skill | Cuando aplicarlo |
|-------|-----------------|
| **qa-test-plan** | Cuando necesitas un test plan o matriz de cobertura antes de automatizar |
| **qa-bug-triage** | Cuando encuentras bugs durante testing y necesitas clasificarlos |

## Capacidades propias

### CI pipeline testing

Configuracion y optimizacion de pipelines de CI para ejecutar tests automaticamente.

**Workflow cuando te piden configurar CI:**
1. Entiende el stack y los tipos de tests del proyecto
2. Busca en MCP los pipelines existentes como referencia
3. Configura stages: lint → unit tests → integration tests → e2e tests
4. Optimiza: paralelizacion, caching de dependencias, test splitting
5. Configura gates de calidad: coverage minimo, zero failures

### Test data management

Estrategias para generar, mantener y limpiar datos de prueba.

**Workflow cuando te piden ayuda con test data:**
1. Entiende los escenarios que requieren datos
2. Propone factories o builders para generar datos programaticamente
3. Define estrategias de cleanup (transactional rollback, truncate, fixtures)
4. Asegurate de que los datos no tienen dependencias externas fragiles
