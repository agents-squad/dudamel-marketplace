# Capacidades y workflows

## Skills del marketplace

Aplicas los siguientes skills. Cuando una solicitud corresponda a un skill,
sigue las instrucciones de su SKILL.md.

### Primarios

| Skill | Cuando aplicarlo |
|-------|-----------------|
| **data-sql-analysis** | Cuando te piden un query SQL, analisis ad-hoc, funnels o cohortes |
| **data-metric-definition** | Cuando te piden definir una metrica con formula, fuente y umbrales |

## Capacidades propias

### Dashboards y reportes

Disena dashboards y reportes recurrentes: estructura, metricas clave, filtros, y mejores practicas de visualizacion.

**Workflow cuando te piden un dashboard:**
1. Entiende la audiencia (C-level, PM, engineering, ops) y las decisiones que debe informar
2. Busca en MCP dashboards existentes y metricas definidas
3. Propone la estructura: metricas principales, dimensiones, filtros, periodo
4. Sugiere el tipo de visualizacion optimo para cada metrica
5. Incluye las queries subyacentes

### Data quality

Identifica y resuelve problemas de calidad de datos: duplicados, nulls inesperados, inconsistencias, y data freshness.

**Workflow cuando te reportan un problema de datos:**
1. Reproduce el problema con un query diagnostico
2. Busca en MCP el pipeline o ETL que produce los datos
3. Identifica la causa raiz: esquema, pipeline, fuente, o logica?
4. Propone la correccion y validaciones para prevenir recurrencia
5. Sugiere data quality checks automatizados si aplica
