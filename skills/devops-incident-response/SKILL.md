---
name: devops-incident-response
description: Triage de incidentes, mitigación (rollback, flag off, scaling), comunicación, postmortem blameless
version: "0.1"
---

# Incident Response

Soporte durante incidentes de producción: triage, mitigación inmediata, comunicación coordinada, y postmortem blameless. Útil durante incidentes activos, preparación de runbooks, y mejora del proceso de respuesta.

## Alcance

- **Cubre:** triage y clasificación de severidad, mitigación inmediata (rollback, feature flag off, scaling), coordinación de comunicación (status page, Slack), postmortem blameless con root cause y action items
- **No cubre:** monitoreo continuo, configuración de alertas, gestión de on-call rotations

## Instrucciones

**Workflow durante un incidente:**

1. **Triage — Identificar impacto y severidad:**
   - **SEV1 (Critical)** — Servicio core down, pérdida de datos, impacto financiero
   - **SEV2 (High)** — Funcionalidad importante degradada, afecta >10% usuarios
   - **SEV3 (Medium)** — Funcionalidad secundaria afectada, workaround disponible
   - **SEV4 (Low)** — Impacto menor, no urgente
   - Documenta: ¿qué síntoma se observa? ¿desde cuándo? ¿cuántos usuarios afectados?

2. **Investigar — Buscar causa raíz:**
   - Revisa runbooks relevantes e incidentes similares previos
   - Correlaciona con deploys recientes, cambios de configuración, o eventos externos
   - Usa dashboards, logs y traces para identificar el componente fallando
   - Forma una hipótesis y valídala con datos

3. **Mitigar — Acciones inmediatas:**
   - **Rollback** — Revertir el último deploy si correlaciona con el inicio del incidente
   - **Feature flag off** — Desactivar el feature problemático sin rollback completo
   - **Scaling** — Aumentar capacidad si el problema es de carga
   - **Circuit breaker** — Aislar una dependencia fallando
   - **Comunicación** — Actualizar status page y canal de incidentes
   - Prioriza mitigación sobre root cause: restaurar servicio primero, investigar después

4. **Comunicar — Mantener informados a stakeholders:**
   - Canal dedicado de incidentes (Slack) con updates cada 15-30 minutos
   - Status page actualizada con impacto y ETA de resolución
   - Comunicación interna: qué pasó, qué se está haciendo, cuándo se espera resolver
   - Si afecta usuarios finales: comunicación externa coordinada con soporte

5. **Postmortem blameless:**
   - **Timeline** — Secuencia cronológica de eventos desde la primera alerta hasta la resolución
   - **Root cause** — Causa raíz técnica (no "error humano")
   - **Impacto** — Usuarios afectados, duración, impacto financiero si aplica
   - **Qué funcionó bien** — Qué ayudó a detectar y resolver rápido
   - **Qué se puede mejorar** — Sin culpar personas, enfocado en procesos y sistemas
   - **Action items** — Acciones concretas con owner y deadline para prevenir recurrencia:
     - Inmediatas (esta semana)
     - Corto plazo (este sprint)
     - Largo plazo (próximo quarter)

## Criterios de calidad

- [ ] La severidad está clasificada con criterios objetivos (SEV1-4)
- [ ] La mitigación prioriza restaurar servicio sobre encontrar root cause
- [ ] La comunicación tiene cadencia regular (cada 15-30 min)
- [ ] El postmortem es blameless (enfocado en sistemas, no personas)
- [ ] El timeline del postmortem es cronológico y factual
- [ ] Los action items tienen owner y deadline concretos
- [ ] Se documentan lecciones aprendidas para prevenir recurrencia
