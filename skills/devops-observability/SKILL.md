---
name: devops-observability
description: Métricas, logs estructurados, traces con OpenTelemetry — SLIs/SLOs, alertas, dashboards
version: "0.1"
---

# Observability

Configuración de métricas, logs estructurados y traces distribuidos con OpenTelemetry. Definición de SLIs/SLOs, alertas y dashboards. Útil para nuevos servicios, mejora de observabilidad existente, y preparación para on-call.

## Alcance

- **Cubre:** métricas (latencia, error rate, throughput), logs estructurados, traces distribuidos (OpenTelemetry), definición de SLIs/SLOs, configuración de alertas, diseño de dashboards
- **No cubre:** instalación de herramientas de observabilidad (Datadog, Grafana), gestión de on-call rotations, capacity planning

## Instrucciones

**Workflow de observabilidad:**

1. **Identificar SLIs y SLOs** — Define para el servicio:
   - **SLIs (Service Level Indicators):**
     - Latencia: p50, p95, p99 de response time
     - Disponibilidad: porcentaje de requests exitosos (2xx, 3xx)
     - Throughput: requests por segundo
     - Error rate: porcentaje de errores (5xx)
   - **SLOs (Service Level Objectives):**
     - Target por cada SLI (ej: p99 latencia < 500ms, disponibilidad > 99.9%)
     - Error budget: margen de error permitido por período

2. **Revisar convenciones existentes** — Consulta:
   - Herramientas de observabilidad del equipo
   - Convenciones de naming para métricas y logs
   - Dashboards y alertas existentes como referencia

3. **Configurar métricas:**
   - RED metrics: Rate, Errors, Duration por endpoint
   - USE metrics para recursos: Utilization, Saturation, Errors
   - Custom business metrics si aplica (transacciones, conversiones)
   - Naming consistente: `service_name.operation.metric_type`

4. **Configurar logs estructurados:**
   - Formato JSON con campos estándar: timestamp, level, service, trace_id, message
   - Niveles de log apropiados: ERROR (accionable), WARN (atención), INFO (eventos clave), DEBUG (desarrollo)
   - No loguear datos sensibles (tokens, passwords, PII)
   - Correlación con traces via trace_id y span_id

5. **Configurar traces distribuidos:**
   - Instrumentación con OpenTelemetry (auto o manual)
   - Propagación de contexto entre servicios (W3C Trace Context)
   - Spans para operaciones significativas (HTTP, DB, cache, external calls)
   - Sampling strategy para controlar volumen (ej: 10% normal, 100% errores)

6. **Configurar alertas:**
   - Basadas en SLOs (burn rate alerts, no threshold estático)
   - Severidad: Critical (pager), Warning (Slack), Info (dashboard)
   - Escalation paths claros para cada severidad
   - Runbook link en cada alerta
   - Evitar alert fatigue: cada alerta debe ser accionable

7. **Diseñar dashboards:**
   - Dashboard de overview del servicio: SLIs, error budget, trends
   - Dashboard de debugging: métricas detalladas, logs, traces
   - Variables para filtrar por environment, versión, endpoint

## Criterios de calidad

- [ ] Los SLIs y SLOs están definidos con targets numéricos
- [ ] Las métricas cubren RED (Rate, Errors, Duration) por endpoint
- [ ] Los logs son estructurados (JSON) con trace_id para correlación
- [ ] Los traces cubren las operaciones principales del servicio
- [ ] Las alertas están basadas en SLOs y son accionables
- [ ] Cada alerta tiene severidad, escalation path, y link a runbook
- [ ] Los dashboards tienen overview y vista de debugging
