---
name: qa-bug-triage
description: Clasificación blocker/critical/major/minor, reporte con repro steps, expected vs actual, workarounds
version: "0.1"
---

# Bug Triage

Clasificación de bugs por severidad e impacto, redacción de reportes claros con pasos de reproducción, y gestión de workarounds. Útil para reportar bugs, clasificar backlog de bugs existentes, y priorizar correcciones.

## Alcance

- **Cubre:** clasificación de severidad (blocker, critical, major, minor), redacción de reportes con formato estándar, pasos de reproducción, expected vs actual, evidencia, workarounds, verificación de duplicados
- **No cubre:** corrección del bug, análisis de root cause en código, automatización de tests de regresión

## Instrucciones

**Workflow de triage y reporte de bugs:**

1. **Entender el comportamiento** — Identifica:
   - ¿Qué comportamiento se observa? (actual)
   - ¿Qué comportamiento se esperaba? (expected)
   - ¿En qué contexto ocurre? (environment, dispositivo, usuario, datos)

2. **Verificar duplicados** — Antes de crear un nuevo reporte:
   - Busca bugs similares ya reportados
   - Si es duplicado, agrega información adicional al existente
   - Si es relacionado pero diferente, referencia el bug existente

3. **Clasificar severidad:**
   - **Blocker** — Bloquea testing o uso del producto. No hay workaround. Impacto en funcionalidad core
   - **Critical** — Funcionalidad importante rota. Workaround difícil. Afecta muchos usuarios
   - **Major** — Funcionalidad afectada pero tiene workaround. Impacto moderado
   - **Minor** — Cosmético o impacto bajo. No afecta funcionalidad core. Workaround fácil

4. **Redactar el reporte** con formato estándar:

   ```
   ## Resumen
   {Descripción concisa del problema en una línea}

   ## Severidad
   {Blocker | Critical | Major | Minor}

   ## Entorno
   - OS / Dispositivo: {ej: iOS 17.2, iPhone 15}
   - Versión de la app: {ej: 2.3.1 (build 456)}
   - Ambiente: {staging | production}
   - Usuario de prueba: {si aplica}

   ## Pasos de reproducción
   1. {Paso 1}
   2. {Paso 2}
   3. {Paso 3}

   ## Resultado esperado
   {Qué debería ocurrir}

   ## Resultado actual
   {Qué ocurre realmente}

   ## Evidencia
   {Screenshots, videos, logs relevantes}

   ## Frecuencia
   {Siempre | Intermitente (X de Y intentos) | Una vez}

   ## Workaround
   {Si existe, describir. Si no, indicar "No hay workaround conocido"}
   ```

5. **Evaluar impacto:**
   - ¿Cuántos usuarios están afectados?
   - ¿Afecta funcionalidad de pagos, auth, o datos sensibles?
   - ¿Bloquea un release o un equipo?
   - ¿Hay degradación progresiva (empeora con el tiempo)?

## Criterios de calidad

- [ ] La severidad está clasificada correctamente (blocker/critical/major/minor)
- [ ] El reporte sigue el formato estándar completo
- [ ] Los pasos de reproducción son claros y reproducibles por otra persona
- [ ] Expected vs actual están claramente diferenciados
- [ ] Se incluye evidencia (screenshots, logs, videos)
- [ ] Se verificó que no es duplicado de un bug existente
- [ ] Se documenta el workaround si existe
