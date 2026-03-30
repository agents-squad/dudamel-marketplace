---
name: architecture-api-design
description: Diseño de APIs RESTful, GraphQL o gRPC con versionado, paginación, errores, auth y docs OpenAPI
version: "0.1"
---

# API Design

Diseño de APIs con definición de recursos, endpoints, schemas, paginación, manejo de errores, versionado y documentación. Útil para nuevas APIs, extensión de APIs existentes, y estandarización de contratos.

## Alcance

- **Cubre:** diseño de APIs RESTful, GraphQL o gRPC, definición de recursos y endpoints, request/response schemas, paginación, filtros, manejo de errores, versionado, documentación con ejemplos
- **No cubre:** implementación de código, configuración de API gateways, setup de autenticación

## Instrucciones

**Workflow de diseño de API:**

1. **Identificar consumers** — Determina quiénes consumirán la API:
   - Frontend web, apps mobile, otros servicios internos, partners externos
   - Patrones de uso esperados: lectura pesada, escritura pesada, real-time
   - Volumen y concurrencia esperados

2. **Revisar convenciones existentes** — Consulta las convenciones de API del proyecto:
   - Estilo (REST, GraphQL, gRPC)
   - Naming conventions (camelCase, snake_case)
   - Estándares de versionado (URL path, header)
   - Formatos de error establecidos

3. **Definir recursos y endpoints** — Para cada recurso:
   - Nombre del recurso (sustantivo, plural)
   - Métodos HTTP soportados (GET, POST, PUT, PATCH, DELETE)
   - URL patterns y path parameters
   - Query parameters para filtros y búsqueda

4. **Diseñar request/response schemas** — Para cada endpoint:
   - Request body schema con tipos y validaciones
   - Response body schema con campos y tipos
   - Ejemplos concretos de request y response

5. **Incluir patrones transversales:**
   - **Paginación** — cursor-based o offset/limit con metadata (total, hasNext)
   - **Filtros** — query parameters estandarizados
   - **Manejo de errores** — formato consistente con code, message, details
   - **Versionado** — estrategia para evolución sin breaking changes
   - **Rate limiting** — headers X-RateLimit-Limit, X-RateLimit-Remaining

6. **Documentar** — Genera documentación con:
   - Descripción de cada endpoint
   - Ejemplos de request/response para cada caso (éxito, error, edge cases)
   - Códigos de estado HTTP utilizados y su significado

## Criterios de calidad

- [ ] Los consumers están identificados y sus necesidades consideradas
- [ ] Los recursos siguen naming conventions consistentes
- [ ] Cada endpoint tiene request/response schema documentado
- [ ] Se incluyen ejemplos concretos de request y response
- [ ] La paginación está definida con formato estándar
- [ ] El manejo de errores es consistente con formato definido
- [ ] La estrategia de versionado está documentada
