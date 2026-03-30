---
name: data-sql-analysis
description: Queries SQL optimizados (PostgreSQL) — CTEs, EXPLAIN ANALYZE, funnels, cohortes, data quality
version: "0.1"
---

# SQL Analysis

Escritura de queries SQL optimizados para PostgreSQL: análisis exploratorio, funnels de conversión, cohortes de retención, y diagnóstico de calidad de datos. Útil para responder preguntas de negocio, investigar métricas, y construir reportes.

## Alcance

- **Cubre:** queries SQL optimizados (PostgreSQL), CTEs legibles, análisis de funnels y cohortes, EXPLAIN ANALYZE para optimización, diagnóstico de data quality, interpretación de resultados
- **No cubre:** administración de bases de datos, diseño de pipelines ETL, configuración de herramientas de BI

## Instrucciones

**Workflow de análisis SQL:**

1. **Clarificar la pregunta** — Determina:
   - ¿Qué métrica, dato o insight se necesita?
   - ¿Qué periodo de tiempo?
   - ¿Qué segmento de usuarios o entidades?
   - ¿Qué granularidad? (diario, semanal, mensual)

2. **Investigar modelo de datos** — Revisa:
   - Esquemas y tablas relevantes
   - Queries existentes como referencia
   - Definiciones de métricas establecidas

3. **Escribir el query** — Siguiendo best practices:
   - **CTEs** para legibilidad (cada CTE con propósito claro)
   - **Aliases** descriptivos para tablas y columnas
   - **Comentarios** explicando lógica no obvia
   - **Filtros** explícitos para periodo, segmento, y exclusiones
   - Evitar `SELECT *` — listar columnas explícitamente

4. **Patrones comunes:**

   **Funnel de conversión:**
   ```sql
   WITH step_1 AS (...),
        step_2 AS (...),
        step_3 AS (...)
   SELECT
     COUNT(DISTINCT s1.user_id) AS step_1_users,
     COUNT(DISTINCT s2.user_id) AS step_2_users,
     ROUND(COUNT(DISTINCT s2.user_id)::numeric / NULLIF(COUNT(DISTINCT s1.user_id), 0), 4) AS conversion_1_to_2
   FROM step_1 s1
   LEFT JOIN step_2 s2 ON s1.user_id = s2.user_id
   ```

   **Análisis de cohortes:**
   ```sql
   WITH cohorts AS (
     SELECT user_id, DATE_TRUNC('month', created_at) AS cohort_month
     FROM users
   ),
   activity AS (
     SELECT user_id, DATE_TRUNC('month', event_at) AS activity_month
     FROM events
   )
   SELECT cohort_month, activity_month,
     COUNT(DISTINCT a.user_id) AS active_users
   FROM cohorts c
   JOIN activity a ON c.user_id = a.user_id
   GROUP BY 1, 2
   ```

5. **Optimizar si es necesario:**
   - Ejecutar `EXPLAIN ANALYZE` para queries lentos
   - Verificar que los índices cubren las condiciones WHERE
   - Evitar JOINs innecesarios y subqueries correlacionadas
   - Considerar materializar si el query se ejecuta frecuentemente

6. **Interpretar resultados:**
   - Explicar el resultado esperado y posibles caveats
   - Notar si los datos pueden tener sesgos o missing values
   - Ofrecer análisis si el resultado necesita interpretación

## Criterios de calidad

- [ ] El query usa CTEs con nombres descriptivos
- [ ] Las columnas y tablas tienen aliases claros
- [ ] Los filtros de periodo y segmento son explícitos
- [ ] Se incluye explicación del resultado esperado
- [ ] Se mencionan caveats o limitaciones de los datos
- [ ] Para queries lentos, se incluye EXPLAIN ANALYZE
- [ ] El query es reproducible (no depende de estado temporal)
