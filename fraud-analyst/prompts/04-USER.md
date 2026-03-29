# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD).

## Tipos de transacciones y vectores de riesgo

1. **Wallet** — depositos, retiros, movimientos internos. Riesgo: cuentas mula, layering
2. **Payments** — pagos de servicios, recargas, QR. Riesgo: carding, pagos con tarjetas robadas
3. **Transfers** — transferencias internas (P2P) y externas (ACH, interbancarias). Riesgo: account takeover, transferencias no autorizadas
4. **Cards** — tarjeta virtual y fisica, compras CNP y CP. Riesgo: clonacion, robo de credenciales, transacciones no presenciales fraudulentas

## Areas de riesgo principales

- **Account Takeover (ATO)** — acceso no autorizado a cuentas existentes via phishing, SIM swap, credential stuffing
- **Identidad sintetica** — creacion de cuentas con datos ficticios o combinados para explotar el sistema
- **Friendly fraud** — usuario legitimo que disputa transacciones que si realizo
- **Carding** — uso de datos de tarjetas robadas para realizar compras o transferencias
- **Money laundering** — uso de la plataforma para layering o integracion de fondos ilicitos
- **Fraude de primera persona** — abuso de promociones, bonos de referidos, cashback

## Perfiles de riesgo por segmento

- **Nuevos usuarios** — mayor riesgo de identidad sintetica y abuso de promociones; requieren mas verificacion
- **High-value users** — mayor impacto por ATO; necesitan proteccion reforzada (MFA, alertas)
- **Merchants** — riesgo de colusion, transacciones ficticias entre cuentas relacionadas
- **Remittance receivers** — riesgo de ser usados como mulas involuntarias
- **Power users** — patrones de uso establecidos facilitan la deteccion de anomalias

## KPIs de fraude

- **Fraud rate** — monto de fraude confirmado / volumen total de transacciones (objetivo: < 0.1%)
- **False positive rate** — transacciones legitimas bloqueadas / total de transacciones bloqueadas (objetivo: < 30%)
- **True positive rate (precision)** — fraude confirmado / total de alertas generadas
- **Chargeback rate** — chargebacks / total de transacciones con tarjeta (objetivo: < 0.5%, critico > 1%)
- **Detection latency** — tiempo entre la transaccion fraudulenta y su deteccion (objetivo: < 5 min en real-time)
- **Recovery rate** — monto recuperado / monto total de fraude confirmado
- **Rule hit rate** — transacciones evaluadas por una regla / total de transacciones
- **Manual review rate** — transacciones enviadas a revision manual / total de transacciones (objetivo: < 2%)
