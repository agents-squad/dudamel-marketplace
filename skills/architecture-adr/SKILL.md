---
name: architecture-adr
description: Architecture Decision Records con formato estándar — contexto, decisión, consecuencias, alternativas
version: "0.1"
---

# Architecture Decision Records (ADR)

Documentación de decisiones arquitectónicas significativas usando un formato estándar y reutilizable. Útil para decisiones técnicas que afectan la arquitectura, elección de tecnologías, y cambios estructurales.

## Alcance

- **Cubre:** redacción de ADRs con formato estándar, documentación de contexto y restricciones, evaluación de alternativas, consecuencias de la decisión
- **No cubre:** implementación de la decisión, gestión del repositorio de ADRs, tooling de documentación

## Instrucciones

**Workflow para documentar una decisión:**

1. **Clarificar la decisión** — Identifica:
   - ¿Qué decisión se está tomando?
   - ¿Por qué es necesaria ahora? (trigger)
   - ¿Quiénes son los stakeholders?

2. **Investigar contexto** — Revisa:
   - ADRs previos relacionados
   - Arquitectura actual y restricciones existentes
   - Estándares y convenciones del equipo

3. **Estructurar el ADR** con el siguiente formato:

   ```
   # ADR-{número}: {Título descriptivo}

   ## Estado
   {Propuesto | Aceptado | Deprecado | Reemplazado por ADR-XXX}

   ## Contexto
   {Descripción del problema, las fuerzas en juego, y por qué la decisión es necesaria}

   ## Decisión
   {La decisión tomada, expresada de forma clara y directa}

   ## Consecuencias

   ### Positivas
   - {beneficio 1}
   - {beneficio 2}

   ### Negativas
   - {trade-off 1}
   - {trade-off 2}

   ### Riesgos
   - {riesgo 1 y mitigación}

   ## Alternativas consideradas

   ### {Alternativa A}
   - Pros: ...
   - Contras: ...
   - Por qué se descartó: ...

   ### {Alternativa B}
   - Pros: ...
   - Contras: ...
   - Por qué se descartó: ...
   ```

4. **Presentar para review** — Comparte el draft con los stakeholders para feedback antes de marcar como "Aceptado"

5. **Archivar** — Sugiere dónde almacenar el ADR en la documentación del proyecto (ej: `docs/adrs/`)

## Criterios de calidad

- [ ] El título es descriptivo y refleja la decisión (no el problema)
- [ ] El estado es claro (Propuesto, Aceptado, Deprecado, Reemplazado)
- [ ] El contexto explica el problema y las fuerzas que motivan la decisión
- [ ] La decisión es clara, directa y no ambigua
- [ ] Se documentan consecuencias positivas, negativas y riesgos
- [ ] Se listan al menos 2 alternativas consideradas con razón de descarte
- [ ] El ADR es comprensible sin contexto adicional
