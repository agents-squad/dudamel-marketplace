# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD). Su objetivo es democratizar el acceso a servicios financieros digitales en el mercado ecuatoriano.

## Entorno regulatorio

Peigo opera bajo la supervision y regulacion de las siguientes entidades:

- **Superintendencia de Bancos del Ecuador** — Regulador principal del sistema financiero. Emite normas de solvencia, gestion de riesgos, proteccion al usuario financiero y requerimientos de reporte
- **Junta de Politica y Regulacion Monetaria y Financiera** — Define las politicas monetarias y regulaciones financieras macro. Emite resoluciones sobre limites de tasas, operaciones permitidas y requisitos prudenciales
- **Unidad de Analisis Financiero y Economico (UAFE)** — Organismo encargado de prevencion de lavado de activos y financiamiento del terrorismo. Recibe reportes de operaciones inusuales e injustificadas (ROII)
- **Ley Organica de Defensa del Consumidor** — Proteccion de derechos del consumidor en servicios financieros, transparencia en costos y condiciones
- **Ley de Comercio Electronico** — Marco legal para transacciones electronicas, firmas digitales y proteccion de datos en medios electronicos
- **Codigo Organico Monetario y Financiero** — Marco normativo general del sistema financiero ecuatoriano

## Requisitos de compliance clave

### KYC (Know Your Customer)

- **Nivel basico**: Cedula de identidad, datos personales, validacion biometrica facial. Permite operaciones hasta USD 2,000 mensuales
- **Nivel estandar**: Nivel basico + comprobante de domicilio, declaracion de origen de fondos. Permite operaciones hasta USD 10,000 mensuales
- **Nivel reforzado (Enhanced Due Diligence)**: Nivel estandar + documentacion adicional de origen de fondos, perfil transaccional detallado. Para PEPs (Personas Expuestas Politicamente) y clientes de alto riesgo. Sin limite predefinido

### Obligaciones de reporte

- **ROII (Reporte de Operaciones Inusuales e Injustificadas)** — A la UAFE dentro de 4 dias habiles de detectada la operacion
- **Reporte de transacciones que igualen o superen USD 10,000** — Individual o acumuladas en 30 dias
- **Informes periodicos a la Superintendencia de Bancos** — Estados financieros, indicadores de riesgo, reportes de reclamos

### PCI-DSS

- Cumplimiento con los 12 requisitos de PCI-DSS para proteccion de datos de tarjetas
- Evaluacion anual (SAQ o auditoria QSA segun volumen de transacciones)
- Segmentacion de red, encryption de datos de tarjeta, gestion de accesos, monitoreo continuo

### Proteccion de datos

- Datos personales tratados segun la Ley Organica de Proteccion de Datos Personales del Ecuador (LOPDP)
- Consentimiento explicito para recoleccion y uso de datos
- Derecho de acceso, rectificacion, eliminacion y portabilidad de datos del usuario
- Encryption at rest y in transit para toda PII

## Dominios del producto y compliance relevante

Peigo esta organizado en 9 dominios principales. Cada uno tiene consideraciones especificas de compliance:

1. **Wallet** — Limites transaccionales, reportes a UAFE, conciliacion, proteccion de saldos
2. **Payments** — PCI-DSS (si aplica), limites de pago, transparencia en costos, reversiones
3. **Cards** — PCI-DSS obligatorio, tokenizacion, datos de tarjetahabiente, limites de uso
4. **Transfers** — Limites regulatorios, deteccion de transacciones sospechosas, reportes de operaciones mayores a USD 10,000, interoperabilidad con ACH
5. **Insurance** — Regulacion de Superintendencia de Companias (microseguros), transparencia en condiciones, consentimiento informado
6. **Loyalty** — Tratamiento tributario de puntos/recompensas, transparencia en condiciones del programa
7. **Support** — Tiempos de respuesta regulados por Superintendencia de Bancos, registro de reclamos, trazabilidad
8. **Identity** — KYC completo, validacion biometrica, listas restrictivas (OFAC, ONU, PEPs nacionales), almacenamiento seguro de documentos
9. **Campaigns** — Consentimiento para comunicaciones comerciales (opt-in/opt-out), veracidad publicitaria, regulacion de promociones financieras

## Stack tecnico relevante para compliance

- **Backend**: Node.js / TypeScript, microservicios
- **Bases de datos**: PostgreSQL (principal), Redis (cache)
- **Infraestructura**: Docker, Kubernetes, AWS
- **Secretos**: HashiCorp Vault
- **Audit logging**: Logs estructurados, inmutables, con retencion definida
- **Encryption**: At rest (AES-256) y in transit (TLS 1.2+)
