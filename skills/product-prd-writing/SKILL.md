---
name: product-prd-writing
description: PRDs — contexto, problema, solución, scope, métricas de éxito, criterios de aceptación
version: "0.1"
---

# PRD Writing

Redacción de Product Requirement Documents completos con contexto, problema, solución, scope, métricas de éxito y criterios de aceptación. Útil para definir features antes de diseño e implementación.

## Alcance

- **Cubre:** estructura de PRD, definición de problema, solución propuesta, scope (in/out), métricas de éxito, criterios de aceptación, iteración con feedback
- **No cubre:** diseño de UI/UX, especificaciones técnicas de implementación, gestión de proyecto

## Instrucciones

**Workflow de redacción de PRD:**

1. **Confirmar el problema** — Identifica:
   - ¿Qué problema se quiere resolver?
   - ¿Para quién? (usuario, segmento, persona)
   - ¿Por qué ahora? (urgencia, oportunidad, dependencia)
   - ¿Cómo se mide el éxito?

2. **Investigar contexto** — Revisa:
   - Documentación existente y PRDs anteriores relacionados
   - Investigación de usuarios disponible
   - Restricciones técnicas y de arquitectura
   - Soluciones existentes (competencia, interno)

3. **Estructurar el PRD:**

   ```
   # {Nombre del Feature}

   ## Contexto
   {Situación actual, background relevante, por qué este feature es necesario ahora}

   ## Problema
   {Descripción clara del problema del usuario. Incluir datos si están disponibles:
   métricas, quejas, drop-off rates}

   ## Solución propuesta
   {Descripción de alto nivel de la solución. No es especificación técnica,
   sino qué experiencia tendrá el usuario}

   ## Scope
   ### In scope
   - {Lo que se incluye en esta versión}

   ### Out of scope
   - {Lo que explícitamente NO se incluye y por qué}

   ## User stories
   - Como {usuario}, quiero {acción}, para {beneficio}
   - ...

   ## Métricas de éxito
   - {Métrica primaria}: de X actual a Y objetivo en Z tiempo
   - {Métrica guardrail}: no degradar {métrica} más de X%

   ## Criterios de aceptación
   1. {Criterio verificable y específico}
   2. {Criterio verificable y específico}
   3. ...

   ## Dependencias
   - {Equipos, servicios, o features de los que depende}

   ## Riesgos
   - {Riesgo identificado} → {Mitigación propuesta}

   ## Timeline estimado
   {Fases si aplica: discovery, design, development, QA, rollout}
   ```

4. **Presentar para review** — Comparte con stakeholders:
   - Producto, diseño, ingeniería, y otros equipos relevantes
   - Iterar basado en feedback hasta alineación
   - Documentar decisiones y cambios de scope

## Criterios de calidad

- [ ] El problema está descrito con claridad y datos de soporte
- [ ] La solución está descrita desde la perspectiva del usuario
- [ ] El scope tiene in scope y out of scope explícitos
- [ ] Las métricas de éxito son medibles con baseline actual y target
- [ ] Los criterios de aceptación son verificables y específicos
- [ ] Los riesgos y dependencias están identificados
- [ ] El PRD es comprensible sin contexto adicional
