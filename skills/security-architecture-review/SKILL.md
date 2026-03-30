---
name: security-architecture-review
description: Evaluación de auth, encryption, segmentación de red, gestión de secretos (Vault)
version: "0.1"
---

# Security Architecture Review

Evaluación de decisiones arquitectónicas desde la perspectiva de seguridad: autenticación, autorización, criptografía, segmentación de red, y gestión de secretos. Útil para validar la postura de seguridad de servicios nuevos o cambios arquitectónicos significativos.

## Alcance

- **Cubre:** revisión de autenticación y autorización end-to-end, evaluación de criptografía, segmentación de red, gestión de secretos (Vault), recomendaciones priorizadas por riesgo
- **No cubre:** implementación de controles, configuración de herramientas, pentesting

## Instrucciones

**Workflow de revisión de arquitectura de seguridad:**

1. **Identificar componentes a revisar** — Determina qué áreas evaluar:
   - Autenticación (JWT, OAuth2, mTLS, API keys)
   - Autorización (RBAC, ABAC, políticas)
   - Criptografía (at rest, in transit, key management)
   - Segmentación de red (network policies, firewalls)
   - Gestión de secretos (Vault, rotation, audit)

2. **Revisar contexto existente** — Consulta:
   - Arquitectura actual documentada
   - Decisiones de seguridad previas (ADRs)
   - Resultados de auditorías anteriores
   - Regulaciones aplicables (PCI-DSS, protección de datos)

3. **Evaluar autenticación y autorización:**
   - Flujo de autenticación end-to-end (login → token → verificación → refresh)
   - Fortaleza del mecanismo (JWT con RS256, no HS256 con secreto débil)
   - Token lifecycle: emisión, verificación, refresh, revocación
   - Autorización: ¿se verifica en cada request? ¿Least privilege?
   - MFA para operaciones críticas (pagos, cambio de contraseña)

4. **Evaluar criptografía:**
   - **In transit:** TLS 1.2+ obligatorio, certificados válidos, no mixed content
   - **At rest:** AES-256 para datos sensibles, database encryption
   - **Key management:** rotación automática, almacenamiento seguro, no hardcoded
   - **Algoritmos:** no usar algoritmos deprecados (MD5, SHA1, DES, RC4)
   - **Hashing de passwords:** bcrypt, scrypt, o Argon2 con salt

5. **Evaluar segmentación de red:**
   - ¿Los servicios internos están expuestos a internet innecesariamente?
   - ¿Hay network policies que limitan comunicación entre servicios?
   - ¿Las bases de datos están en subnet privada?
   - ¿Se usa mTLS para comunicación entre servicios internos?

6. **Evaluar gestión de secretos:**
   - ¿Se usa Vault o equivalente? (no variables de entorno estáticas)
   - ¿Least privilege? Cada servicio solo accede a sus secretos
   - ¿Rotación automática de credenciales?
   - ¿Audit trail de acceso a secretos?
   - ¿Los secretos están fuera del código y de los logs?

7. **Presentar hallazgos** — Para cada hallazgo:
   - Área evaluada (auth, crypto, network, secrets)
   - Descripción del hallazgo
   - Riesgo (Critical, High, Medium, Low)
   - Recomendación concreta
   - Prioridad de implementación

## Criterios de calidad

- [ ] Se evaluaron las 4 áreas: autenticación, criptografía, red, secretos
- [ ] La autenticación y autorización están evaluadas end-to-end
- [ ] La criptografía usa algoritmos actuales (no deprecados)
- [ ] La segmentación de red limita la superficie de ataque
- [ ] Los secretos están en Vault con least privilege y rotación
- [ ] Los hallazgos tienen riesgo y recomendación concreta
- [ ] Las recomendaciones están priorizadas por riesgo
