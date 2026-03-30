---
name: backend-api-implementation
description: Implementación de APIs — auth JWT/OAuth2, rate limiting, paginación, migraciones reversibles, Swagger
version: "0.1"
---

# Backend API Implementation

Implementación de APIs RESTful y GraphQL con autenticación, rate limiting, paginación, documentación OpenAPI/Swagger y migraciones de base de datos. Útil para construir nuevos endpoints, extender APIs existentes, y estandarizar la implementación backend.

## Alcance

- **Cubre:** implementación de endpoints REST/GraphQL, autenticación (JWT, OAuth2), rate limiting, paginación, filtros, manejo de errores, documentación Swagger/OpenAPI, migraciones reversibles, validación de inputs
- **No cubre:** diseño de arquitectura de alto nivel, configuración de infraestructura, frontend

## Instrucciones

**Workflow de implementación de API:**

1. **Identificar consumers y casos de uso** — Determina:
   - ¿Quién consume la API? (frontend, mobile, servicios internos, partners)
   - Casos de uso principales y volumen esperado
   - Requisitos de latencia y disponibilidad

2. **Revisar convenciones existentes** — Consulta:
   - Endpoints existentes como referencia de estilo
   - Convenciones del proyecto (naming, estructura, error format)
   - Middlewares y utilidades disponibles

3. **Definir recursos y endpoints** — Para cada recurso:
   - Métodos HTTP, URL patterns, path y query parameters
   - Request body schema con validaciones (tipos, required, min/max, regex)
   - Response body schema con códigos de estado

4. **Implementar autenticación y autorización:**
   - Auth method: JWT Bearer, OAuth2, API keys según el contexto
   - Middleware de autenticación (verificación de token, extracción de claims)
   - Autorización por roles/permisos en cada endpoint
   - Rate limiting por usuario/IP con headers estándar

5. **Implementar paginación y filtros:**
   - Paginación cursor-based o offset/limit con metadata (total, hasNext, cursor)
   - Filtros por query parameters con validación
   - Ordenamiento configurable con default seguro

6. **Escribir migraciones reversibles:**
   - Script de migración con up (aplicar) y down (revertir)
   - Consideraciones de zero-downtime: columna nullable → backfill → constraint
   - Índices para los queries más frecuentes

7. **Documentar con OpenAPI/Swagger:**
   - Descripción de cada endpoint con parámetros y responses
   - Ejemplos de request/response para éxito y errores
   - Schemas reutilizables para entidades comunes

## Criterios de calidad

- [ ] Los inputs están validados (tipos, rangos, formatos)
- [ ] La autenticación y autorización están implementadas en cada endpoint
- [ ] La paginación incluye metadata (total, hasNext)
- [ ] Los errores siguen un formato consistente con código y mensaje
- [ ] Las migraciones son reversibles (up y down)
- [ ] La documentación OpenAPI está completa con ejemplos
- [ ] El rate limiting está configurado con headers estándar
