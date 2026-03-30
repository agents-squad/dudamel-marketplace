---
name: architecture-trade-off-analysis
description: Evaluación estructurada de opciones — tabla comparativa con criterios, scoring, pros/contras, recomendación
version: "0.1"
---

# Trade-off Analysis

Evaluación estructurada de opciones técnicas o arquitectónicas usando criterios ponderados, tabla comparativa y recomendación fundamentada. Útil para decisiones de tecnología, patrones de diseño, y cualquier elección con múltiples alternativas.

## Alcance

- **Cubre:** definición de criterios de evaluación, investigación de opciones, tabla comparativa con scoring, pros/contras por opción, recomendación con justificación
- **No cubre:** implementación de la opción elegida, PoCs o benchmarks, decisiones de negocio no técnicas

## Instrucciones

**Workflow de análisis de trade-offs:**

1. **Definir criterios de evaluación** — Acuerda con el equipo los criterios relevantes:
   - **Performance** — latencia, throughput, uso de recursos
   - **Complejidad** — curva de aprendizaje, esfuerzo de implementación
   - **Mantenibilidad** — facilidad de evolución, debugging, documentación
   - **Costo** — licencias, infraestructura, operación
   - **Time-to-market** — velocidad de implementación
   - **Escalabilidad** — comportamiento bajo carga creciente
   - **Riesgo** — madurez de la tecnología, vendor lock-in, comunidad
   - Asigna peso relativo a cada criterio (1-5) según el contexto

2. **Investigar opciones** — Para cada alternativa:
   - Descripción breve de la opción
   - Cómo resuelve el problema
   - Experiencia del equipo con la tecnología
   - Estado de madurez y soporte

3. **Construir tabla comparativa** — Formato:

   | Criterio | Peso | Opción A | Opción B | Opción C |
   |----------|------|----------|----------|----------|
   | Performance | 4 | 4 (16) | 3 (12) | 5 (20) |
   | Complejidad | 3 | 3 (9) | 5 (15) | 2 (6) |
   | ... | ... | ... | ... | ... |
   | **Total** | | **XX** | **XX** | **XX** |

   Score = calificación (1-5) × peso del criterio

4. **Detallar pros/contras** — Para cada opción:
   - Lista de pros concretos con evidencia
   - Lista de contras concretos con evidencia
   - Riesgos específicos y posibles mitigaciones

5. **Emitir recomendación** — Incluye:
   - Opción recomendada con justificación clara
   - En qué escenarios cambiaría la recomendación
   - Próximos pasos si se acepta la recomendación

## Criterios de calidad

- [ ] Los criterios de evaluación son relevantes para el contexto
- [ ] Cada criterio tiene peso relativo asignado
- [ ] Se evalúan al menos 2-3 opciones viables
- [ ] La tabla comparativa tiene scoring numérico consistente
- [ ] Cada opción tiene pros/contras concretos con evidencia
- [ ] La recomendación es clara y justificada con los datos del análisis
- [ ] Se documentan escenarios donde la recomendación cambiaría
