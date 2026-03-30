---
name: fraud-rule-design
description: Diseño de reglas de detección — umbrales, velocity checks, estimación TP/FP, rollout en shadow mode
version: "0.1"
---

# Fraud Rule Design

Diseño y ajuste de reglas de detección de fraude para rule engines: umbrales, velocity checks, combinaciones de señales, estimación de impacto (TP/FP), y rollout progresivo. Útil para prevenir nuevos patrones de fraude, ajustar reglas existentes, y reducir falsos positivos.

## Alcance

- **Cubre:** diseño de reglas (condiciones, umbrales, ventanas de tiempo), estimación de true/false positives, plan de rollout en shadow mode, ajuste de reglas existentes, optimización de falsos positivos
- **No cubre:** implementación en el rule engine, monitoreo en tiempo real, investigación forense

## Instrucciones

**Workflow de diseño de reglas:**

1. **Entender el patrón de fraude** — Identifica:
   - ¿Qué patrón de fraude debe detectar la regla? (velocity, monto atípico, device nuevo, geo inconsistente)
   - ¿Hay casos reales documentados? Analiza modus operandi
   - ¿Es fraude de terceros (ATO, identidad robada) o de primera persona (friendly fraud)?

2. **Revisar reglas existentes** — Consulta:
   - Reglas activas que cubren patrones similares
   - ¿Hay conflictos o superposición con reglas existentes?
   - Performance actual de reglas relacionadas (TP rate, FP rate)

3. **Diseñar la regla:**

   ```
   ## Regla: {nombre descriptivo}

   ### Condiciones
   - {Condición 1}: {ej: transacciones > 5 en 10 minutos desde el mismo device}
   - {Condición 2}: {ej: monto total > 3x del promedio del usuario en 30 días}
   - {Operador}: {AND | OR entre condiciones}

   ### Umbrales
   - {Parámetro}: {valor} — {justificación}
   - {Parámetro}: {valor} — {justificación}

   ### Ventana de tiempo
   - {Periodo de evaluación}: {ej: últimos 60 minutos}

   ### Acción
   - {flag para review manual | bloquear transacción | requerir step-up auth}

   ### Excepciones
   - {Whitelist/excepciones}: {ej: usuarios verificados nivel 3, transacciones recurrentes}
   ```

4. **Estimar impacto:**
   - **True positives** — ¿Cuántas transacciones fraudulentas capturará? (backtest con datos históricos)
   - **False positives** — ¿Cuántas transacciones legítimas bloqueará?
   - **Ratio TP/FP** — Target: >10:1 para reglas de bloqueo, >3:1 para review manual
   - **Impacto en UX** — ¿Cuántos usuarios legítimos serán afectados?

5. **Plan de rollout:**
   - **Shadow mode** — Activar la regla sin ejecutar acción, solo logging
     - Duración: mínimo 1-2 semanas
     - Monitorear: volumen de triggers, TP/FP estimados, patrones inesperados
   - **Activación gradual** — Si shadow mode es exitoso:
     - Fase 1: solo flag (sin bloqueo)
     - Fase 2: bloqueo en segmento de bajo riesgo
     - Fase 3: activación completa
   - **Criterios de avance:** FP rate < umbral definido, TP rate estable
   - **Kill switch:** desactivar inmediatamente si FP rate excede umbral

6. **Optimización post-activación:**
   - Revisar falsos positivos: ¿qué tienen en común? ¿Se puede mejorar la señal?
   - Ajustar umbrales: más estrictos si hay FP bajo, más relajados si hay FP alto
   - Agregar excepciones inteligentes (whitelists por segmento, historial)

## Criterios de calidad

- [ ] El patrón de fraude está documentado con casos reales
- [ ] Las condiciones y umbrales están justificados con datos
- [ ] Se incluyen excepciones para minimizar falsos positivos
- [ ] La estimación de TP/FP está basada en backtest con datos históricos
- [ ] El plan de rollout incluye shadow mode antes de activación
- [ ] Los criterios de avance y kill switch están definidos
- [ ] No hay conflicto con reglas existentes
