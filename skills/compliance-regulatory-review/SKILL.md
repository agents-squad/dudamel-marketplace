---
name: compliance-regulatory-review
description: Evaluación de features contra regulaciones financieras (KYC/AML, PCI-DSS, protección de datos)
version: "0.1"
---

# Regulatory Review

Evaluación de funcionalidades nuevas contra regulaciones financieras aplicables, identificación de requisitos de compliance, y recomendación de controles necesarios antes del desarrollo. Útil para features que manejan datos financieros, PII, pagos, o identidad de usuarios.

## Alcance

- **Cubre:** revisión contra regulaciones financieras (KYC/AML, PCI-DSS, protección de datos), identificación de requisitos de compliance, recomendación de controles técnicos y operativos, dictamen de compliance con severidad
- **No cubre:** asesoría legal formal, implementación de controles, representación ante reguladores

## Instrucciones

**Workflow de revisión regulatoria:**

1. **Entender el feature** — Identifica:
   - ¿Qué hace el feature? ¿Qué datos maneja?
   - ¿Qué flujos de usuario involucra? (onboarding, pagos, transferencias)
   - ¿Qué datos almacena, procesa o transmite? (PII, financieros, tarjetas)
   - ¿Quiénes son los usuarios? (personas, empresas, menores)

2. **Identificar regulaciones aplicables** — Evalúa contra:
   - **KYC/AML** — ¿Requiere verificación de identidad? ¿Maneja transacciones que requieren monitoreo?
     - Niveles de due diligence (simplificado, estándar, reforzado)
     - Umbrales de reporte a unidad de inteligencia financiera
   - **PCI-DSS** — ¿Toca datos de tarjetas de pago?
     - Alcance del entorno PCI
     - Requisitos de los 12 controles aplicables
     - Tokenización vs almacenamiento directo
   - **Protección de datos** — ¿Maneja datos personales?
     - Consentimiento, minimización, retención
     - Derechos del titular (acceso, rectificación, eliminación)
     - Transferencia internacional de datos
   - **Regulación financiera local** — Normativa del regulador financiero aplicable

3. **Listar requisitos de compliance:**
   - Para cada regulación relevante, lista los requisitos específicos
   - Indica si el feature ya cumple, cumple parcialmente, o no cumple
   - Diferencia entre requisitos técnicos (encriptar, tokenizar) y operativos (proceso, documentación)

4. **Recomendar controles:**
   - **Controles técnicos:** encryption, tokenización, access control, audit logging
   - **Controles operativos:** procesos, capacitación, monitoreo, reportes
   - Para cada control: descripción, esfuerzo estimado, y si es bloqueante para go-live

5. **Emitir dictamen de compliance:**
   - **Conforme** — Cumple todos los requisitos. Puede proceder
   - **Conforme con condiciones** — Cumple con acciones menores pendientes (listar)
   - **No conforme** — Tiene bloqueantes regulatorios que deben resolverse antes de go-live
   - Clasificar hallazgos por severidad: Bloqueante / Alto / Medio / Bajo

## Criterios de calidad

- [ ] Las regulaciones aplicables están identificadas (KYC/AML, PCI-DSS, datos)
- [ ] Los requisitos de compliance son específicos por regulación
- [ ] Los controles recomendados son concretos (técnicos y operativos)
- [ ] El dictamen es claro: Conforme / Con condiciones / No conforme
- [ ] Los hallazgos bloqueantes están identificados y priorizados
- [ ] Las acciones requeridas antes de go-live están listadas
