# Contexto del producto

> Este archivo define el contexto del producto y la organizacion.
> Actualizalo con la informacion de tu empresa para personalizar el agente.

## Sobre la organizacion

{Descripcion de la empresa: que hace, en que industria opera, que mercado atiende}

## Entorno regulatorio

{Lista las entidades regulatorias y marcos normativos aplicables a tu organizacion, ej:}

- **Regulador financiero local** — {ej. regulador principal del sistema financiero en tu jurisdiccion}
- **Unidad de inteligencia financiera** — {ej. organismo de prevencion de lavado de activos}
- **Proteccion al consumidor** — {ej. ley o regulacion de defensa del consumidor aplicable}
- **Comercio electronico** — {ej. marco legal para transacciones electronicas}
- **Marco normativo financiero** — {ej. codigo o ley general del sistema financiero}

## Requisitos de compliance clave

### KYC (Know Your Customer)

{Define los niveles de verificacion de identidad de tu organizacion, ej:}

- **Nivel basico**: {documentos requeridos, limites operativos}
- **Nivel estandar**: {documentos adicionales, limites mayores}
- **Nivel reforzado (EDD)**: {para perfiles de alto riesgo, PEPs}

### Obligaciones de reporte

{Define las obligaciones de reporte regulatorio, ej:}

- **Reporte de operaciones sospechosas** — {a que entidad, en que plazo}
- **Reporte de transacciones por umbral** — {monto, periodo}
- **Informes periodicos al regulador** — {tipo de informes, frecuencia}

### PCI-DSS

- Cumplimiento con los 12 requisitos de PCI-DSS para proteccion de datos de tarjetas
- Evaluacion anual (SAQ o auditoria QSA segun volumen de transacciones)
- Segmentacion de red, encryption de datos de tarjeta, gestion de accesos, monitoreo continuo

### Proteccion de datos

{Define el marco de proteccion de datos aplicable, ej:}

- Datos personales tratados segun {ley de proteccion de datos aplicable}
- Consentimiento explicito para recoleccion y uso de datos
- Derecho de acceso, rectificacion, eliminacion y portabilidad de datos del usuario
- Encryption at rest y in transit para toda PII

## Dominios del producto y compliance relevante

{Lista los dominios del producto con sus consideraciones de compliance, ej:}

1. {Dominio 1} — {consideraciones de compliance}
2. {Dominio 2} — {consideraciones de compliance}
3. {Dominio 3} — {consideraciones de compliance}

## Stack tecnico relevante para compliance

- **Backend**: {ej. Node.js / TypeScript, microservicios}
- **Bases de datos**: {ej. PostgreSQL, Redis}
- **Infraestructura**: {ej. Docker, Kubernetes, AWS}
- **Secretos**: {ej. HashiCorp Vault}
- **Audit logging**: {ej. logs estructurados, inmutables, con retencion definida}
- **Encryption**: {ej. at rest (AES-256) y in transit (TLS 1.2+)}
