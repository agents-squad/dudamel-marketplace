---
name: ux-user-research
description: Investigación de usuarios — entrevistas, encuestas, journey maps, personas. Síntesis accionable
version: "0.1"
---

# User Research

Investigación de usuarios con entrevistas, encuestas, análisis de comportamiento, personas, y journey maps. Síntesis de hallazgos en formato accionable para informar decisiones de diseño y producto. Útil para discovery de features, validación de conceptos, y comprensión de problemas de usuario.

## Alcance

- **Cubre:** planificación de investigación, guías de entrevista/encuesta, selección de metodología, personas, journey maps, síntesis accionable de hallazgos
- **No cubre:** reclutamiento de participantes, ejecución de sesiones (moderación), análisis cuantitativo avanzado (estadístico)

## Instrucciones

**Workflow de investigación de usuarios:**

1. **Definir objetivo** — Identifica:
   - ¿Qué decisión de diseño o producto necesitamos informar?
   - ¿Qué sabemos actualmente? ¿Qué asumimos sin evidencia?
   - ¿Cuál es el alcance? (feature específico, segmento, flujo)
   - ¿Cuándo se necesitan los resultados?

2. **Investigar antecedentes** — Revisa:
   - Investigaciones previas y sus hallazgos
   - Personas existentes y journey maps
   - Datos de comportamiento disponibles (analytics, heatmaps)
   - Feedback de soporte y NPS

3. **Seleccionar metodología:**
   - **Entrevistas en profundidad** — Para explorar motivaciones, contexto, y pain points. 5-8 participantes
   - **Encuestas** — Para validar patrones cuantitativamente. >30 respuestas para tendencias
   - **Análisis de datos** — Para entender comportamiento real (no declarado)
   - **Card sorting** — Para informar arquitectura de información
   - **Usability testing** — Para validar un diseño específico (ver skill `ux-design-system`)

4. **Definir guía de investigación:**
   - Preguntas abiertas (no leading): "Cuéntame sobre..." en lugar de "¿No te parece que...?"
   - Criterios de selección de participantes (segmento, comportamiento, experiencia)
   - Tamaño de muestra adecuado a la metodología
   - Logística: duración, formato (remoto/presencial), incentivos

5. **Sintetizar hallazgos** — Formato accionable:

   ```
   ## Resumen ejecutivo
   {3-5 hallazgos principales en una oración cada uno}

   ## Insights
   ### Insight 1: {título descriptivo}
   - **Evidencia:** {qué datos soportan este insight}
   - **Impacto:** {cómo afecta al usuario y al producto}
   - **Recomendación:** {qué hacer con este insight}

   ## Personas (si aplica)
   ### {Nombre de persona}
   - **Perfil:** {quién es, qué hace}
   - **Necesidades:** {qué busca lograr}
   - **Pain points:** {qué le frustra}
   - **Comportamiento:** {cómo interactúa con el producto}

   ## Journey Map (si aplica)
   | Etapa | Acción | Pensamiento | Emoción | Oportunidad |

   ## Próximos pasos
   - {Acciones recomendadas basadas en los hallazgos}
   ```

## Criterios de calidad

- [ ] El objetivo de investigación está claro y vinculado a una decisión
- [ ] La metodología es apropiada para el tipo de pregunta
- [ ] Las preguntas son abiertas y no leading
- [ ] Los hallazgos están respaldados por evidencia (citas, datos)
- [ ] La síntesis es accionable (cada insight tiene recomendación)
- [ ] Las personas y journey maps son específicas (no genéricas)
- [ ] Los próximos pasos son concretos y priorizados
