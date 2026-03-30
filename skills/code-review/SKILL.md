---
name: code-review
description: Revisión estructurada de código por capas — correctitud, seguridad, performance, mantenibilidad, estilo
version: "0.1"
---

# Code Review

Revisión sistemática de código que evalúa múltiples dimensiones de calidad en orden de prioridad. Útil para pull requests, auditorías de código, y mentoring técnico.

## Alcance

- **Cubre:** revisión de PRs, evaluación de correctitud lógica, detección de problemas de seguridad, análisis de performance, evaluación de mantenibilidad, adherencia a estilo y convenciones
- **No cubre:** ejecución de tests automatizados, configuración de linters, refactoring directo del código

## Instrucciones

**Workflow de revisión de código:**

1. **Entender el contexto** — Identifica qué feature implementa, qué problema resuelve, y cuál es el alcance del cambio
2. **Consultar convenciones** — Revisa las convenciones del proyecto, decisiones previas, y guías de estilo establecidas
3. **Revisar por capas** (en este orden de prioridad):
   - **Correctitud** — ¿La lógica es correcta? ¿Maneja edge cases? ¿Cumple los requisitos?
   - **Seguridad** — ¿Hay vulnerabilidades? ¿Se validan inputs? ¿Se manejan secretos correctamente?
   - **Performance** — ¿Hay queries N+1, loops innecesarios, memory leaks, o llamadas bloqueantes?
   - **Mantenibilidad** — ¿El código es legible? ¿Los nombres son claros? ¿La abstracción es adecuada?
   - **Estilo** — ¿Sigue las convenciones del proyecto? ¿Es consistente con el código existente?
4. **Priorizar comentarios** — Clasifica cada hallazgo:
   - **Blocker** — Debe corregirse antes de mergear (bugs, vulnerabilidades, pérdida de datos)
   - **Sugerencia** — Mejora recomendada pero no bloqueante (refactor, naming, simplificación)
   - **Nit** — Preferencia de estilo menor (formato, orden de imports)
5. **Explicar el "por qué"** — Para cada comentario, explica la razón detrás de la sugerencia, no solo qué cambiar. Incluye ejemplos de código cuando sea útil

**Formato de salida:**

Para cada hallazgo:
- Archivo y línea (si aplica)
- Categoría: `[BLOCKER]`, `[SUGERENCIA]`, o `[NIT]`
- Descripción del problema
- Explicación del por qué es un problema
- Sugerencia de corrección con ejemplo de código

## Criterios de calidad

- [ ] Se revisaron las 5 capas en orden: correctitud → seguridad → performance → mantenibilidad → estilo
- [ ] Cada comentario tiene categoría de prioridad (blocker/sugerencia/nit)
- [ ] Cada comentario explica el "por qué", no solo el "qué"
- [ ] Los blockers incluyen sugerencia concreta de corrección
- [ ] Se consideraron edge cases y escenarios de error
- [ ] La revisión es constructiva y orientada al aprendizaje
