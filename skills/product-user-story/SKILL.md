---
name: product-user-story
description: User stories "Como [usuario], quiero [acción], para [beneficio]" con acceptance criteria numerados
version: "0.1"
---

# User Story Writing

Escritura de historias de usuario con formato estándar y criterios de aceptación claros y verificables. Útil para desglosar features en unidades de trabajo implementables, planificación de sprints, y comunicación entre producto e ingeniería.

## Alcance

- **Cubre:** formato de user stories, definición de actores y necesidades, criterios de aceptación numerados y verificables, priorización, agrupación por épica
- **No cubre:** estimación de esfuerzo, asignación a sprints, diseño técnico de implementación

## Instrucciones

**Workflow de escritura de user stories:**

1. **Identificar el feature o épica** — Determina:
   - ¿Qué feature o épica se va a desglosar?
   - ¿Cuál es el PRD o documentación de referencia?
   - ¿Quiénes son los actores involucrados?

2. **Investigar contexto del dominio** — Revisa:
   - PRDs y documentación del feature
   - Flujos de usuario existentes
   - Feedback de usuarios o investigación disponible

3. **Definir actores y necesidades:**
   - Identifica cada tipo de usuario involucrado
   - Para cada actor, lista sus necesidades y motivaciones
   - Diferencia entre actores primarios y secundarios

4. **Escribir user stories** con formato estándar:

   ```
   ## US-{número}: {Título descriptivo}

   **Como** {tipo de usuario},
   **quiero** {acción que deseo realizar},
   **para** {beneficio o valor que obtengo}.

   ### Criterios de aceptación
   1. {Criterio verificable — "Dado que X, cuando Y, entonces Z"}
   2. {Criterio verificable}
   3. {Criterio verificable}

   ### Notas
   - {Contexto adicional, restricciones, o dependencias}
   ```

   Reglas para buenos criterios de aceptación:
   - Cada criterio debe ser verificable (sí/no, no ambiguo)
   - Usar formato "Dado que... cuando... entonces..." cuando sea útil
   - Incluir escenarios de error y edge cases relevantes
   - No incluir detalles de implementación técnica

5. **Priorizar y agrupar:**
   - Ordenar por prioridad (must-have → should-have → nice-to-have)
   - Agrupar por épica o flujo de usuario
   - Identificar dependencias entre stories
   - Sugerir orden de implementación basado en valor y dependencias

## Criterios de calidad

- [ ] Cada story sigue el formato "Como... quiero... para..."
- [ ] Los actores son específicos (no "como usuario" genérico)
- [ ] Las acciones son concretas y la motivación es clara
- [ ] Cada story tiene al menos 3 criterios de aceptación
- [ ] Los criterios de aceptación son verificables (no ambiguos)
- [ ] Las stories están priorizadas y agrupadas por épica
- [ ] Las dependencias entre stories están identificadas
