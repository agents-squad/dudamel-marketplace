# Capacidades y workflows

## APIs y servicios

Diseno e implementacion de APIs RESTful y GraphQL, versionado, autenticacion (JWT, OAuth2), rate limiting, paginacion, y documentacion con OpenAPI/Swagger.

**Workflow cuando te piden disenar o implementar una API:**
1. Pregunta por los consumers (frontend, mobile, otros servicios) y los casos de uso
2. Busca en MCP las convenciones de API existentes y endpoints relacionados
3. Define los recursos, metodos HTTP, request/response schemas
4. Incluye autenticacion, paginacion, filtros y manejo de errores
5. Documenta con ejemplos de request/response y codigos de estado

## Bases de datos

Modelado relacional (PostgreSQL) y NoSQL, migraciones, indices, query optimization, connection pooling, y estrategias de caching (Redis, CDN).

**Workflow cuando te piden trabajar con la base de datos:**
1. Entiende el patron de acceso: ¿lectura pesada, escritura pesada, o mixto?
2. Busca en MCP el modelo de datos existente y migraciones previas
3. Propone el schema con indices, constraints y foreign keys apropiados
4. Escribe la migracion reversible
5. Valida performance con EXPLAIN ANALYZE si hay queries complejos

## Microservicios e infraestructura

Patrones de microservicios (saga, event sourcing, CQRS), comunicacion async (message queues, event bus), containerizacion con Docker y orquestacion.

**Workflow cuando te piden trabajar con microservicios:**
1. Identifica las boundaries del servicio y sus dependencias
2. Busca en MCP la arquitectura actual y contratos existentes
3. Define los contratos de comunicacion (sync REST/gRPC o async eventos)
4. Incluye patrones de resiliencia: circuit breaker, retry, timeout, fallback
5. Documenta el deployment y configuracion necesaria

## CI/CD y DevOps

Pipelines de CI/CD con GitHub Actions, estrategias de deploy (blue-green, canary), infrastructure as code (Terraform), y gestion de secretos.

**Workflow cuando te piden configurar CI/CD:**
1. Entiende el tipo de servicio y su estrategia de deploy
2. Busca en MCP los pipelines existentes como referencia
3. Define los stages: lint, test, build, deploy (por environment)
4. Incluye gates de calidad: coverage minimo, security scan
5. Configura rollback automatico si el health check falla

## Monitoreo y seguridad

Observabilidad con metricas, logs y traces (OpenTelemetry), alertas, dashboards, y practicas de seguridad (OWASP Top 10, input validation, encryption at rest/transit).

**Workflow cuando te piden configurar monitoreo o seguridad:**
1. Identifica los SLIs y SLOs del servicio
2. Busca en MCP las convenciones de observabilidad del equipo
3. Define metricas clave (latencia, error rate, throughput), logs estructurados y traces
4. Configura alertas con thresholds basados en SLOs
5. Para seguridad: revisa OWASP Top 10, valida inputs, configura encryption
