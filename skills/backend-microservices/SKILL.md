---
name: backend-microservices
description: Patrones de microservicios — saga, event sourcing, CQRS, comunicación async, circuit breaker
version: "0.1"
---

# Microservices Patterns

Diseño e implementación de patrones de microservicios: boundaries de servicio, comunicación sync/async, resiliencia, y coordinación de transacciones distribuidas. Útil para nuevos servicios, descomposición de monolitos, y mejora de resiliencia entre servicios.

## Alcance

- **Cubre:** definición de service boundaries, contratos de comunicación (REST/gRPC, eventos), patrones de resiliencia (circuit breaker, retry, timeout), transacciones distribuidas (saga, event sourcing, CQRS), documentación de deployment
- **No cubre:** configuración de infraestructura (Kubernetes, Docker), implementación de message brokers, monitoreo y observabilidad

## Instrucciones

**Workflow de diseño de microservicios:**

1. **Definir boundaries del servicio** — Identifica:
   - Dominio de negocio que el servicio encapsula (bounded context)
   - Datos que posee vs datos que consulta de otros servicios
   - Dependencias upstream (de quién depende) y downstream (quién depende de él)
   - Equipo owner y autonomía de deployment

2. **Revisar arquitectura existente** — Consulta:
   - Servicios existentes y sus contratos
   - Patrones de comunicación establecidos
   - Infraestructura de messaging disponible (Kafka, RabbitMQ, SQS)

3. **Definir contratos de comunicación:**
   - **Sync (REST/gRPC)** — Para queries que requieren respuesta inmediata
     - Definir contratos con schemas versionados
     - Incluir timeouts explícitos por endpoint
   - **Async (eventos)** — Para comandos y notificaciones
     - Schema del evento con versionado
     - Semántica de entrega: at-least-once con idempotencia
     - Dead letter queue para mensajes fallidos

4. **Implementar patrones de resiliencia:**
   - **Circuit breaker** — Estados: closed → open → half-open. Configurar thresholds (5 fallos en 30s) y recovery time
   - **Retry** — Con backoff exponencial y jitter. Máximo 3 reintentos para operaciones idempotentes
   - **Timeout** — Timeouts explícitos para cada dependencia externa (no defaults infinitos)
   - **Fallback** — Respuestas degradadas cuando una dependencia falla (cache, defaults, feature flag)
   - **Bulkhead** — Aislamiento de pools de conexión por dependencia

5. **Coordinar transacciones distribuidas** — Si aplica:
   - **Saga pattern** — Orquestación (servicio coordinador) o coreografía (eventos)
     - Definir pasos del saga y compensaciones para cada paso
   - **Event sourcing** — Si se necesita audit trail completo o reconstrucción de estado
   - **CQRS** — Si los patrones de lectura y escritura son significativamente diferentes

6. **Documentar deployment y configuración:**
   - Variables de entorno y secretos requeridos
   - Dependencias de otros servicios y su discovery
   - Health check endpoints (liveness, readiness)
   - Orden de deployment si hay dependencias

## Criterios de calidad

- [ ] Las boundaries del servicio están claras (bounded context)
- [ ] Los contratos de comunicación están definidos y versionados
- [ ] Se incluyen patrones de resiliencia (circuit breaker, retry, timeout)
- [ ] Las operaciones async son idempotentes
- [ ] Las transacciones distribuidas tienen compensaciones definidas
- [ ] Se documenta el deployment con variables de entorno y health checks
- [ ] Los dead letter queues están configurados para mensajes fallidos
