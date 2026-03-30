---
name: data-metric-definition
description: Definición formal de métricas — nombre, fórmula, fuente, granularidad, umbrales, query SQL
version: "0.1"
---

# Metric Definition

Definición formal de métricas de negocio y producto con nombre, fórmula, fuente de datos, granularidad, umbrales, y query SQL. Útil para estandarizar métricas, evitar definiciones duplicadas, y crear una fuente de verdad para medición.

## Alcance

- **Cubre:** definición formal de métricas, fórmula precisa, fuente de datos, granularidad y segmentos, umbrales (good/warning/bad), query SQL para calcularla
- **No cubre:** implementación de dashboards, configuración de herramientas de BI, data engineering (pipelines, ETL)

## Instrucciones

**Workflow de definición de métricas:**

1. **Clarificar propósito** — Determina:
   - ¿Qué decisión debe informar esta métrica?
   - ¿Quién la consultará? (C-level, PM, engineering, ops)
   - ¿Con qué frecuencia se revisará?

2. **Verificar métricas existentes** — Revisa:
   - ¿Ya existe una métrica que mida lo mismo?
   - ¿Hay métricas relacionadas que puedan confundirse?
   - ¿Cómo se alinea con el framework de métricas (North Star, AARRR)?

3. **Definir la métrica** con formato estándar:

   ```
   ## {Nombre de la métrica}

   ### Definición
   - **Nombre:** {nombre_en_snake_case}
   - **Descripción:** {Qué mide en una oración}
   - **Fórmula:** {Fórmula matemática precisa}
   - **Tipo:** {ratio | count | rate | duration | currency}

   ### Fuente de datos
   - **Tablas:** {tabla_principal, tabla_secundaria}
   - **Eventos:** {evento que alimenta la métrica}
   - **Filtros base:** {exclusiones estándar: bots, test users, etc.}

   ### Dimensiones
   - **Granularidad temporal:** {diario | semanal | mensual}
   - **Segmentos:** {por país, por plan, por plataforma, etc.}

   ### Umbrales
   - **Good:** {valor o rango que indica salud}
   - **Warning:** {valor que requiere atención}
   - **Bad:** {valor que requiere acción inmediata}

   ### Baseline
   - **Valor actual:** {último valor conocido}
   - **Tendencia:** {mejorando | estable | deteriorando}

   ### Query SQL
   {Query PostgreSQL para calcular la métrica}

   ### Owner
   - **Equipo:** {equipo responsable}
   - **Frecuencia de revisión:** {diaria | semanal | mensual}
   ```

4. **Escribir el query SQL:**
   - Query reproduible que calcula la métrica
   - Parametrizable por periodo y segmento
   - Con CTEs legibles y comentarios

5. **Validar la definición:**
   - Ejecutar el query y verificar que el resultado tiene sentido
   - Comparar con datos conocidos o benchmarks
   - Verificar que no hay doble conteo o sesgos

## Criterios de calidad

- [ ] La métrica tiene nombre único y descriptivo
- [ ] La fórmula es precisa y no ambigua
- [ ] La fuente de datos está identificada (tablas, eventos)
- [ ] Los umbrales están definidos (good/warning/bad)
- [ ] El query SQL es reproducible y parametrizable
- [ ] Se verificó que no duplica una métrica existente
- [ ] El owner y frecuencia de revisión están definidos
