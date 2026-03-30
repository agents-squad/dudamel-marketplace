---
name: fraud-investigation
description: Investigación de fraude — análisis de transacciones, chargebacks, patrones, acciones preventivas
version: "0.1"
---

# Fraud Investigation

Investigación profunda de casos de fraude: account takeover, identidad sintética, friendly fraud, análisis de chargebacks, y recomendaciones preventivas. Útil para investigar casos específicos, analizar patrones de chargebacks, y proponer mejoras a la detección.

## Alcance

- **Cubre:** investigación de casos individuales, análisis de transacciones sospechosas, clasificación de chargebacks, identificación de patrones, recomendaciones de acciones inmediatas y preventivas
- **No cubre:** monitoreo en tiempo real, diseño de reglas (ver `fraud-rule-design`), reporte a autoridades

## Instrucciones

**Workflow de investigación de fraude:**

### Investigación de casos

1. **Recopilar información** — Reúne todos los datos del caso:
   - Usuario: perfil, historial, nivel de verificación
   - Transacciones: montos, fechas, destinos, métodos de pago
   - Dispositivos: device fingerprints, IPs, geolocalización
   - Timeline: secuencia cronológica de eventos

2. **Investigar contexto** — Revisa:
   - Casos similares previos y cómo se resolvieron
   - Patrones documentados de fraude
   - Listas de indicadores de compromiso (IoCs)

3. **Construir la narrativa del caso:**
   - ¿Qué pasó? (secuencia de eventos)
   - ¿Cómo? (vector de ataque o modus operandi)
   - ¿Cuándo? (timeline preciso)
   - Indicadores de compromiso identificados

4. **Determinar tipo de fraude:**
   - **Account Takeover (ATO)** — Credenciales comprometidas, cambio de device/IP/comportamiento
   - **Identidad sintética** — Datos de identidad fabricados o combinados
   - **Friendly fraud** — El titular legítimo disputa una transacción propia
   - **Fraude de terceros** — Uso de datos robados de otra persona

5. **Recomendar acciones:**
   - **Inmediatas:** bloqueo de cuenta, restricción de transacciones, reverso
   - **Preventivas:** nuevas reglas de detección, mejoras de autenticación, ajuste de umbrales

### Análisis de chargebacks

1. **Recopilar datos** — Periodo, tipo de chargeback, montos:
   - Reason codes (fraude, no reconocido, servicio no prestado)
   - Patrones por BIN, merchant, método de pago, timing

2. **Clasificar chargebacks:**
   - **Fraude real** — Transacción no autorizada por el titular legítimo
   - **Friendly fraud** — Titular disputa una transacción que sí realizó
   - **Error operativo** — Cobro duplicado, monto incorrecto, servicio no entregado

3. **Identificar patrones:**
   - BINs o emisores recurrentes
   - Horarios o días de la semana con picos
   - Merchants o categorías con mayor incidencia
   - Métodos de pago más afectados

4. **Proponer mejoras:**
   - Ajustes a reglas de detección basados en patrones identificados
   - Mejoras en proceso de disputa y evidencia
   - Cambios en flujo de pagos para reducir fraude y friendly fraud

## Criterios de calidad

- [ ] La información del caso está completa (usuario, transacciones, devices, timeline)
- [ ] La narrativa tiene secuencia cronológica clara
- [ ] El tipo de fraude está determinado con nivel de certeza
- [ ] Las acciones inmediatas son concretas y ejecutables
- [ ] Las recomendaciones preventivas mejoran la detección futura
- [ ] Los chargebacks están clasificados por tipo (fraude real, friendly, error)
- [ ] Los patrones identificados son accionables (pueden traducirse en reglas)
