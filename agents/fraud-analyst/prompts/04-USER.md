# Contexto del producto

> Este archivo define el contexto del producto y la organizacion.
> Actualizalo con la informacion de tu empresa para personalizar el agente.

## Sobre la organizacion

{Descripcion de la empresa: que hace, en que industria opera, que mercado atiende}

## Tipos de transacciones y vectores de riesgo

{Lista los tipos de transacciones de tu producto y sus vectores de riesgo, ej:}

1. {Tipo de transaccion 1} — Riesgo: {vectores de riesgo}
2. {Tipo de transaccion 2} — Riesgo: {vectores de riesgo}
3. {Tipo de transaccion 3} — Riesgo: {vectores de riesgo}

## Areas de riesgo principales

- **Account Takeover (ATO)** — acceso no autorizado a cuentas existentes via phishing, SIM swap, credential stuffing
- **Identidad sintetica** — creacion de cuentas con datos ficticios o combinados para explotar el sistema
- **Friendly fraud** — usuario legitimo que disputa transacciones que si realizo
- **Carding** — uso de datos de tarjetas robadas para realizar compras o transferencias
- **Money laundering** — uso de la plataforma para layering o integracion de fondos ilicitos
- **Fraude de primera persona** — abuso de promociones, bonos de referidos, cashback

## Perfiles de riesgo por segmento

{Define los perfiles de riesgo por segmento de usuarios, ej:}

- **Nuevos usuarios** — mayor riesgo de identidad sintetica y abuso de promociones
- **High-value users** — mayor impacto por ATO; necesitan proteccion reforzada
- **Merchants** — riesgo de colusion, transacciones ficticias entre cuentas relacionadas

## KPIs de fraude

- **Fraud rate** — monto de fraude confirmado / volumen total de transacciones (objetivo: < 0.1%)
- **False positive rate** — transacciones legitimas bloqueadas / total de transacciones bloqueadas (objetivo: < 30%)
- **True positive rate (precision)** — fraude confirmado / total de alertas generadas
- **Chargeback rate** — chargebacks / total de transacciones con tarjeta (objetivo: < 0.5%, critico > 1%)
- **Detection latency** — tiempo entre la transaccion fraudulenta y su deteccion (objetivo: < 5 min en real-time)
- **Recovery rate** — monto recuperado / monto total de fraude confirmado
- **Rule hit rate** — transacciones evaluadas por una regla / total de transacciones
- **Manual review rate** — transacciones enviadas a revision manual / total de transacciones (objetivo: < 2%)
