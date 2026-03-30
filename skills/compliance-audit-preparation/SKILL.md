---
name: compliance-audit-preparation
description: Preparación de auditorías — checklist de controles, evidencia, readiness, gaps y remediación
version: "0.1"
---

# Audit Preparation

Organización de documentación, evidencia y procesos necesarios para auditorías internas y externas, evaluaciones regulatorias y certificaciones. Útil para preparar auditorías PCI-DSS, SOC 2, regulatorias, e internas.

## Alcance

- **Cubre:** identificación de controles y evidencias requeridas, evaluación de readiness, checklist de preparación con responsables, identificación de gaps y plan de remediación, resumen ejecutivo de estado
- **No cubre:** ejecución de la auditoría, interacción directa con auditores, implementación de controles

## Instrucciones

**Workflow de preparación de auditoría:**

1. **Identificar tipo de auditoría** — Determina:
   - **PCI-DSS** — Evaluación de cumplimiento de seguridad de datos de tarjetas
   - **SOC 2** — Controles de seguridad, disponibilidad, confidencialidad
   - **Regulatoria** — Evaluación por regulador financiero
   - **Interna** — Auditoría interna de controles
   - Fecha esperada, auditor (QSA, regulador, equipo interno), y alcance

2. **Revisar antecedentes** — Consulta:
   - Hallazgos de auditorías anteriores
   - Planes de remediación pendientes
   - Cambios significativos desde la última auditoría

3. **Listar controles y evidencias requeridas:**

   Para cada control del marco de auditoría:
   ```
   | # | Control | Descripción | Evidencia requerida | Estado | Responsable |
   |---|---------|-------------|--------------------| -------|-------------|
   | 1 | {ID} | {Qué debe cumplir} | {Documentos, logs, configs} | {OK / Parcial / Pendiente} | {Nombre} |
   ```

4. **Evaluar estado de readiness:**
   - **Implementado** — Control en operación, evidencia disponible
   - **Parcial** — Control existe pero incompleto o sin evidencia suficiente
   - **Pendiente** — Control no implementado o sin evidencia
   - Calcular porcentaje de readiness global

5. **Identificar gaps y plan de remediación:**
   - Para cada control parcial o pendiente:
     - ¿Qué falta? (implementación, documentación, evidencia)
     - Esfuerzo estimado de remediación
     - Responsable y fecha límite
     - Prioridad: Crítico (bloqueante para auditoría), Alto, Medio, Bajo

6. **Generar checklist de preparación:**
   - [ ] Controles implementados y documentados
   - [ ] Evidencia recopilada y organizada
   - [ ] Gaps remediados o plan de remediación documentado
   - [ ] Personal clave informado y disponible
   - [ ] Documentación actualizada (políticas, procedimientos)
   - [ ] Hallazgos previos cerrados o con progreso documentado

7. **Preparar resumen ejecutivo:**
   - Estado general de readiness (porcentaje, riesgo)
   - Gaps críticos pendientes
   - Riesgos principales para la auditoría
   - Recomendaciones para maximizar el resultado

## Criterios de calidad

- [ ] El tipo de auditoría y marco de referencia están identificados
- [ ] Todos los controles del marco están listados con su estado
- [ ] Cada control tiene evidencia requerida y responsable asignado
- [ ] Los gaps tienen plan de remediación con fecha y responsable
- [ ] El porcentaje de readiness está calculado
- [ ] El resumen ejecutivo es claro para audiencia no técnica
- [ ] Los hallazgos de auditorías previas están referenciados
