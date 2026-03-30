---
name: architecture-data-modeling
description: Esquemas de datos relacionales/NoSQL, índices, constraints, patrones de acceso, caching
version: "0.1"
---

# Data Modeling

Diseño de esquemas de datos relacionales y NoSQL con índices, constraints, patrones de acceso y estrategias de caching. Útil para nuevas entidades, evolución de modelos existentes, y optimización de acceso a datos.

## Alcance

- **Cubre:** diseño de esquemas relacionales (PostgreSQL) y NoSQL, definición de entidades y relaciones, índices y constraints, patrones de acceso, estrategias de caching, migraciones
- **No cubre:** ejecución de migraciones, configuración de bases de datos, administración de servidores

## Instrucciones

**Workflow de modelado de datos:**

1. **Identificar entidades y relaciones** — Determina:
   - Entidades principales y sus atributos
   - Relaciones entre entidades (1:1, 1:N, N:M)
   - Cardinalidad y opcionalidad de cada relación
   - Entidades de dominio vs entidades técnicas (auditoría, logs)

2. **Revisar modelo existente** — Consulta:
   - Modelo de datos actual y sus convenciones
   - Migraciones previas y evolución del schema
   - Patrones establecidos (soft delete, timestamps, UUIDs)

3. **Proponer el esquema** — Define:
   - Tablas/colecciones con columnas, tipos de datos y defaults
   - Primary keys (UUID vs serial, composite keys si aplica)
   - Foreign keys con acciones ON DELETE/ON UPDATE
   - Constraints: NOT NULL, UNIQUE, CHECK
   - Índices basados en patrones de acceso (simple, compuesto, parcial, GIN/GiST)

4. **Validar contra patrones de acceso** — Para cada query principal:
   - ¿El modelo soporta el query de forma eficiente?
   - ¿Los índices cubren las condiciones WHERE y ORDER BY?
   - ¿Se necesitan queries de agregación? ¿Materializar vistas?

5. **Considerar caching** — Si aplica:
   - ¿Qué datos son candidatos a cache? (lectura frecuente, escritura infrecuente)
   - Estrategia de invalidación (TTL, write-through, event-driven)
   - Herramienta (Redis, in-memory, CDN)

6. **Definir migración** — Incluye:
   - Script de migración reversible (up y down)
   - Plan para datos existentes si hay transformación
   - Consideraciones de zero-downtime (agregar columna nullable, backfill, luego NOT NULL)

## Criterios de calidad

- [ ] Las entidades y relaciones están claramente definidas
- [ ] Los tipos de datos son apropiados y consistentes
- [ ] Los índices están justificados por patrones de acceso concretos
- [ ] Los constraints protegen la integridad de datos
- [ ] El modelo soporta los queries principales de forma eficiente
- [ ] La migración es reversible y considera zero-downtime
- [ ] Se documenta la estrategia de caching si aplica
