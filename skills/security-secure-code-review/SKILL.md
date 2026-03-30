---
name: security-secure-code-review
description: Revisión OWASP Top 10 — injection, broken auth, data exposure. Severidad Critical/High/Medium/Low
version: "0.1"
---

# Secure Code Review

Revisión de código enfocada en seguridad: OWASP Top 10, patrones inseguros, manejo de secretos, y vulnerabilidades comunes. Útil para PRs que tocan autenticación, pagos, datos sensibles, o integraciones externas.

## Alcance

- **Cubre:** revisión contra OWASP Top 10, validación de inputs, encoding de outputs, manejo de errores sin data leaks, gestión de secretos, clasificación de hallazgos por severidad
- **No cubre:** escaneo automatizado (SAST/DAST), pentesting, configuración de WAF

## Instrucciones

**Workflow de revisión de código seguro:**

1. **Identificar contexto** — Determina:
   - ¿Qué hace el código? ¿Qué datos maneja?
   - ¿Qué permisos tiene el servicio? (acceso a DB, servicios externos, secretos)
   - ¿Es código que maneja auth, pagos, PII, o integraciones externas?

2. **Revisar guías previas** — Consulta:
   - Guías de secure coding del equipo
   - Hallazgos de seguridad previos en componentes similares
   - Dependencias con vulnerabilidades conocidas

3. **Revisar contra OWASP Top 10:**
   - **Injection** (SQL, XSS, SSRF, command injection)
     - ¿Se usan queries parametrizados? ¿Se escapan outputs HTML?
     - ¿Se validan URLs antes de hacer requests? ¿Se sanitizan inputs de shell?
   - **Broken Authentication**
     - ¿Los tokens son seguros? ¿Se verifican correctamente?
     - ¿Hay protección contra brute force? ¿Session management es robusto?
   - **Sensitive Data Exposure**
     - ¿Se cifran datos sensibles at rest y in transit?
     - ¿Se loguean datos sensibles por accidente?
   - **Broken Access Control**
     - ¿Se verifican permisos en cada endpoint? ¿Hay IDOR?
     - ¿Se valida ownership de recursos?
   - **Security Misconfiguration**
     - ¿Headers de seguridad configurados? ¿CORS restrictivo?
     - ¿Error messages sin data leaks?
   - **Vulnerable Components**
     - ¿Dependencias con CVEs conocidos?
   - **Insufficient Logging**
     - ¿Se loguean eventos de seguridad? (login fallido, cambio de permisos, acceso a datos sensibles)

4. **Verificar manejo de inputs y outputs:**
   - Inputs: validación de tipo, rango, formato, longitud máxima
   - Outputs: encoding apropiado según contexto (HTML, URL, JSON)
   - Errores: mensajes genéricos al usuario, detalles en logs internos

5. **Verificar manejo de secretos:**
   - ¿Están en Vault o variables de entorno (no hardcoded)?
   - ¿Se loguean por accidente? (tokens en URLs, secretos en stack traces)
   - ¿Se rotan periódicamente?

6. **Presentar hallazgos** — Para cada hallazgo:
   - **Severidad**: Critical / High / Medium / Low
   - **Categoría OWASP** que aplica
   - **Descripción** del problema con ubicación en el código
   - **Evidencia** — ejemplo de cómo se podría explotar
   - **Remediación** — corrección concreta con ejemplo de código

## Criterios de calidad

- [ ] Se revisaron todas las categorías OWASP Top 10 relevantes
- [ ] Cada hallazgo tiene severidad (Critical/High/Medium/Low)
- [ ] Cada hallazgo incluye evidencia y remediación concreta
- [ ] Se verificó validación de inputs y encoding de outputs
- [ ] Se verificó que secretos no están hardcoded ni logueados
- [ ] Los hallazgos Critical y High tienen remediación inmediata sugerida
