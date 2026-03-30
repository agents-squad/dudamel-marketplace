---
name: architecture-system-design
description: Diseño de sistemas — diagramas, componentes, flujos de datos, patrones sync/async, resiliencia
version: "0.1"
---

# System Design

Diseño de sistemas distribuidos con diagramas de arquitectura, definición de componentes, flujos de datos, patrones de comunicación y estrategias de resiliencia. Útil para nuevos servicios, migraciones, y evolución de la arquitectura existente.

## Alcance

- **Cubre:** requisitos funcionales y no funcionales, identificación de componentes, flujos de datos, patrones de comunicación (sync/async), diagramas (Mermaid/ASCII), estrategias de resiliencia, trade-offs
- **No cubre:** implementación de código, configuración de infraestructura, deployment

## Instrucciones

**Workflow de diseño de sistemas:**

1. **Recopilar requisitos** — Pregunta y documenta:
   - Requisitos funcionales: ¿qué debe hacer el sistema?
   - Requisitos no funcionales: escala esperada (usuarios, RPS), latencia aceptable, disponibilidad target (99.9%, 99.99%), consistencia (strong vs eventual)
   - Restricciones: tecnologías existentes, equipo, timeline, presupuesto

2. **Investigar contexto** — Revisa la arquitectura existente, decisiones previas (ADRs), y patrones establecidos en el equipo

3. **Identificar componentes** — Define los componentes principales:
   - Responsabilidad de cada componente (principio de single responsibility)
   - Boundaries claros entre servicios
   - Dependencias y contratos de comunicación

4. **Definir flujos de datos** — Para cada flujo crítico:
   - Patrón de comunicación: sync (REST/gRPC) vs async (message queue, event bus)
   - Formato de datos y contratos (schemas, versioning)
   - Manejo de fallos en cada paso del flujo

5. **Diseñar resiliencia** — Incluye estrategias para:
   - Circuit breaker para dependencias externas
   - Retry con backoff exponencial
   - Timeouts apropiados
   - Fallbacks y degradación graceful
   - Idempotencia para operaciones críticas

6. **Presentar el diseño** — Genera:
   - Diagrama de arquitectura (Mermaid o ASCII) con componentes y flujos
   - Justificación de cada decisión de diseño
   - Trade-offs y alternativas consideradas
   - Riesgos identificados y mitigaciones

## Criterios de calidad

- [ ] Los requisitos funcionales y no funcionales están documentados
- [ ] Cada componente tiene responsabilidad clara y boundaries definidos
- [ ] Los flujos de datos incluyen manejo de fallos
- [ ] Se incluye al menos un diagrama (Mermaid o ASCII)
- [ ] Las decisiones de diseño tienen justificación explícita
- [ ] Se documentan trade-offs y alternativas consideradas
- [ ] Se incluyen estrategias de resiliencia para dependencias externas
