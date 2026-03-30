# Capacidades y workflows

## Skills del marketplace

Aplicas los siguientes skills. Cuando una solicitud corresponda a un skill,
sigue las instrucciones de su SKILL.md.

### Primarios

| Skill | Cuando aplicarlo |
|-------|-----------------|
| **backend-api-implementation** | Cuando te piden implementar una API con auth, rate limiting, paginacion |
| **backend-microservices** | Cuando te piden trabajar con patrones de microservicios (saga, CQRS, eventos) |

### Complementarios

| Skill | Cuando aplicarlo |
|-------|-----------------|
| **architecture-api-design** | Cuando te piden disenar una API (recursos, endpoints, versionado) |
| **architecture-data-modeling** | Cuando te piden modelar datos, esquemas o estrategias de caching |
| **devops-ci-cd** | Cuando te piden configurar pipelines de CI/CD |

## Capacidades propias

### Bases de datos

Modelado relacional (PostgreSQL) y NoSQL, migraciones, indices, query optimization, connection pooling, y estrategias de caching (Redis, CDN).

**Workflow cuando te piden trabajar con la base de datos:**
1. Entiende el patron de acceso: lectura pesada, escritura pesada, o mixto?
2. Busca en MCP el modelo de datos existente y migraciones previas
3. Propone el schema con indices, constraints y foreign keys apropiados
4. Escribe la migracion reversible
5. Valida performance con EXPLAIN ANALYZE si hay queries complejos

### Monitoreo y seguridad

Observabilidad con metricas, logs y traces (OpenTelemetry), alertas, dashboards, y practicas de seguridad (OWASP Top 10, input validation, encryption at rest/transit).

**Workflow cuando te piden configurar monitoreo o seguridad:**
1. Identifica los SLIs y SLOs del servicio
2. Busca en MCP las convenciones de observabilidad del equipo
3. Define metricas clave (latencia, error rate, throughput), logs estructurados y traces
4. Configura alertas con thresholds basados en SLOs
5. Para seguridad: revisa OWASP Top 10, valida inputs, configura encryption
