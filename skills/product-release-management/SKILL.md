---
name: product-release-management
description: Release planning, go/no-go checklists, feature flag rollout, rollback plans, changelog
version: "0.1"
---

# Release Management

Planificación de releases, decisiones go/no-go, estrategias de rollout con feature flags, planes de rollback, y generación de changelogs. Útil para coordinar releases cross-team, validar readiness, y gestionar rollouts progresivos.

## Alcance

- **Cubre:** release planning con timeline y dependencias, go/no-go checklists, estrategias de feature flag rollout, planes de rollback, changelogs y release notes
- **No cubre:** implementación de pipelines de deploy, configuración de herramientas de feature flags, gestión de incidentes post-release

## Instrucciones

**Workflow de release management:**

### 1. Release Planning

1. **Definir scope** — Identifica:
   - Features, fixes y cambios incluidos en el release
   - Equipos involucrados y sus responsables
   - Dependencias entre servicios y componentes
2. **Definir timeline:**
   - Code freeze date
   - QA window (inicio, fin)
   - Go/no-go meeting date
   - Deploy window (fecha, hora, duración)
3. **Identificar riesgos:**
   - Cambios en servicios críticos (pagos, auth, transferencias)
   - Volumen de cambios vs releases anteriores
   - Ventana de deploy (hora pico vs hora baja)
4. **Comunicar:**
   - Canal de comunicación para el release (Slack channel)
   - Cadencia de sincronización (daily standup, async updates)

### 2. Go/No-Go Decision

Recorrer checklist de readiness:
- [ ] Tests passing (unit, integration, e2e)
- [ ] QA sign-off obtenido
- [ ] Performance benchmarks dentro de límites
- [ ] Rollback plan documentado y probado
- [ ] Alertas de monitoreo configuradas
- [ ] Changelog listo
- [ ] Comunicación preparada (interna y externa si aplica)
- [ ] Feature flags configurados con kill switch

Decisión: **GO**, **NO-GO** (con bloqueantes listados), o **GO con condiciones** (con condiciones explícitas).

### 3. Feature Flag Rollout

1. Definir estrategia de rollout progresivo:
   - 1% → 5% → 25% → 50% → 100%
2. Para cada fase:
   - Segmento target (ej: empleados internos, beta users, región)
   - Métricas a monitorear (error rate, latencia, conversion)
   - Duración mínima antes de avanzar
3. Criterios de avance: métricas saludables, sin errores nuevos
4. Criterios de kill switch: error rate >X%, latencia >Yms, quejas
5. Graduación a 100% y limpieza de código del flag

### 4. Rollback Plan

1. Confirmar el tipo de rollback:
   - **Completo** — Revertir todo el deploy
   - **Parcial** — Feature flag off para un feature específico
   - **Hotfix forward** — Fix rápido sin revertir
2. Pasos concretos con orden y owners
3. Comunicación: qué decir internamente, qué decir a usuarios
4. Post-rollback: proponer postmortem

### 5. Changelog

Clasificar cambios:
- **Nuevos:** features nuevos
- **Mejoras:** mejoras a funcionalidades existentes
- **Fixes:** correcciones de bugs
- **Internos:** cambios técnicos sin impacto al usuario
- **Deprecaciones:** funcionalidades que se eliminarán

Generar versión técnica (para ingeniería) y versión de alto nivel (para producto y negocio).

## Criterios de calidad

- [ ] El release plan tiene scope, timeline y riesgos documentados
- [ ] El checklist de go/no-go cubre testing, monitoreo y rollback
- [ ] La estrategia de feature flag tiene porcentajes, métricas y kill switch
- [ ] El rollback plan tiene pasos concretos con owners
- [ ] El changelog clasifica cambios por tipo y audiencia
- [ ] La comunicación está planificada para cada fase
