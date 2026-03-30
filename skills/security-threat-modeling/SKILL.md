---
name: security-threat-modeling
description: Modelado de amenazas con STRIDE y DFD — trust boundaries, clasificación por probabilidad/impacto
version: "0.1"
---

# Threat Modeling

Modelado de amenazas para features nuevos, cambios arquitectónicos y flujos críticos usando STRIDE y diagramas de flujo de datos (DFD). Útil para evaluar la superficie de ataque antes de implementar cambios significativos.

## Alcance

- **Cubre:** diagramas de flujo de datos (DFD), identificación de trust boundaries, análisis STRIDE por componente, clasificación de amenazas por probabilidad e impacto, mitigaciones priorizadas
- **No cubre:** pentesting, escaneo de vulnerabilidades automatizado, implementación de controles de seguridad

## Instrucciones

**Workflow de threat modeling:**

1. **Entender el alcance** — Identifica:
   - ¿Qué feature o cambio se está evaluando?
   - ¿Qué datos maneja? (PII, financieros, credenciales)
   - ¿Quién lo consume? (usuarios finales, servicios internos, partners)
   - ¿Cuál es el impacto de una brecha? (regulatorio, financiero, reputacional)

2. **Investigar contexto** — Revisa:
   - Arquitectura existente y decisiones de seguridad previas
   - Threat models anteriores de componentes relacionados
   - Regulaciones aplicables (PCI-DSS, protección de datos)

3. **Dibujar el DFD (Diagrama de Flujo de Datos):**
   - Procesos (servicios, APIs, workers)
   - Almacenes de datos (bases de datos, caches, file storage)
   - Flujos de datos (requests, responses, eventos)
   - Entidades externas (usuarios, servicios terceros)
   - **Trust boundaries** — Líneas que separan zonas de confianza (ej: internet vs red interna, servicio vs base de datos)

4. **Aplicar STRIDE** — Para cada componente y flujo, evalúa:
   - **Spoofing** — ¿Alguien puede hacerse pasar por otro? (auth débil, tokens predecibles)
   - **Tampering** — ¿Se pueden modificar datos en tránsito o en reposo? (falta de integridad)
   - **Repudiation** — ¿Se puede negar una acción? (falta de audit trail)
   - **Information Disclosure** — ¿Se pueden filtrar datos sensibles? (logs, errores verbosos, SQL injection)
   - **Denial of Service** — ¿Se puede hacer el servicio inaccesible? (sin rate limiting, sin quotas)
   - **Elevation of Privilege** — ¿Se pueden obtener permisos no autorizados? (broken access control)

5. **Clasificar amenazas** — Usa una matriz de riesgo:
   - **Probabilidad**: Alta / Media / Baja
   - **Impacto**: Crítico / Alto / Medio / Bajo
   - Riesgo = Probabilidad × Impacto
   - Priorizar: Crítico/Alto primero

6. **Proponer mitigaciones** — Para cada amenaza:
   - Control técnico concreto (ej: "agregar rate limiting de 100 req/min por IP")
   - Prioridad basada en el nivel de riesgo
   - Esfuerzo estimado de implementación
   - Si la mitigación no es inmediata, proponer control compensatorio temporal

7. **Documentar** — Formato reutilizable:
   - DFD con trust boundaries marcados
   - Tabla de amenazas: componente, categoría STRIDE, descripción, probabilidad, impacto, mitigación
   - Resumen ejecutivo con las amenazas más críticas

## Criterios de calidad

- [ ] El DFD incluye todos los componentes, flujos y trust boundaries
- [ ] STRIDE se aplicó a cada componente y flujo relevante
- [ ] Cada amenaza tiene clasificación de probabilidad e impacto
- [ ] Las mitigaciones son concretas y accionables (no genéricas)
- [ ] Las amenazas críticas y altas tienen mitigación propuesta
- [ ] El documento es reutilizable y comprensible sin contexto adicional
