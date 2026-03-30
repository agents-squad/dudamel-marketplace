---
name: growth-experiment-design
description: Diseño de A/B tests — hipótesis, sample size, duración, métricas primarias/guardrail, criterios ship/kill
version: "0.1"
---

# Experiment Design

Diseño de A/B tests y experimentos de growth con hipótesis claras, tamaño de muestra, duración, métricas primarias y guardrail, y criterios de decisión. Útil para validar cambios de producto, optimizar funnels, y tomar decisiones basadas en datos.

## Alcance

- **Cubre:** formulación de hipótesis, diseño de variantes, cálculo de sample size y duración, definición de métricas (primaria, secundarias, guardrail), criterios de decisión (ship/iterate/kill)
- **No cubre:** implementación técnica del A/B test, configuración de herramientas de experimentación, análisis estadístico post-experimento

## Instrucciones

**Workflow de diseño de experimentos:**

1. **Formular la hipótesis** — Estructura:
   - **Observación:** {qué dato o insight motiva el experimento}
   - **Hipótesis:** "Si {cambio}, entonces {efecto esperado} porque {razón}"
   - **Ejemplo:** "Si simplificamos el formulario de registro de 5 a 3 campos, entonces la tasa de completado aumentará >10% porque reducimos la fricción percibida"

2. **Investigar precedentes** — Revisa:
   - Experimentos previos similares y sus resultados
   - Benchmarks del producto para las métricas relevantes
   - Datos actuales del funnel o feature afectado

3. **Diseñar variantes:**
   - **Control (A):** experiencia actual, sin cambios
   - **Tratamiento (B):** cambio específico a testear
   - Si hay múltiples ideas, considerar variantes adicionales (B, C)
   - Cada variante debe probar un solo cambio (no confundir variables)

4. **Definir métricas:**
   - **Métrica primaria:** la que determina si el experimento es exitoso
     - Una sola métrica, clara y medible
     - Debe mover con el cambio propuesto
   - **Métricas secundarias:** complementan el análisis
     - Engagement, tiempo en flujo, clicks
   - **Métricas guardrail:** no deben empeorar
     - Revenue, tasa de errores, NPS, retención
     - Si una guardrail se degrada significativamente → kill

5. **Calcular sample size y duración:**
   - Baseline actual de la métrica primaria
   - Minimum Detectable Effect (MDE) — ¿cuál es el cambio mínimo que vale la pena detectar?
   - Significancia estadística target (típicamente 95%)
   - Power (típicamente 80%)
   - Duración mínima: al menos 1 semana completa para capturar patrones
   - No hacer "peeking" — esperar hasta alcanzar el sample size calculado

6. **Establecer criterios de decisión:**
   - **Ship:** métrica primaria mejora con significancia estadística, guardrails estables
   - **Iterate:** resultado no concluyente o mejora insuficiente, aprendizaje sugiere nueva variante
   - **Kill:** métrica primaria sin mejora, o guardrails degradadas significativamente

7. **Documentar el diseño completo:**
   - Hipótesis, variantes, métricas, sample size, duración, criterios
   - Fecha de inicio y fin estimada
   - Owner del experimento
   - Riesgos (ej: impacto en revenue durante el test)

## Criterios de calidad

- [ ] La hipótesis sigue el formato "Si X, entonces Y, porque Z"
- [ ] Las variantes prueban un solo cambio cada una
- [ ] La métrica primaria es una sola y está claramente definida
- [ ] Las métricas guardrail están definidas con umbrales de kill
- [ ] El sample size y duración están calculados (no arbitrarios)
- [ ] Los criterios de ship/iterate/kill son claros y acordados
- [ ] El diseño está documentado antes de iniciar el experimento
