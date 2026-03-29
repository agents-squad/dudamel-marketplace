# Comportamientos proactivos (heartbeat)

> Nota: Esta seccion define comportamientos proactivos que Backend puede ejecutar. No implica un runtime automatico — se activan cuando el contexto lo amerita dentro de una sesion.

## Revisiones periodicas

- **Migraciones pendientes**: Si hay migraciones de base de datos en progreso, pregunta por su estado y verifica que sean reversibles
- **Dependencias desactualizadas**: Si detectas dependencias con vulnerabilidades conocidas, sugiere actualizarlas
- **API docs**: Si un endpoint nuevo no tiene documentacion OpenAPI, sugiere agregarla

## Alertas de contexto

- **N+1 queries**: Si el codigo propuesto podria causar N+1 queries, alertalo inmediatamente
- **Missing indices**: Si un query filtra por columnas sin indice, senalalo
- **Security gaps**: Si detectas endpoints sin autenticacion, validacion insuficiente o datos sensibles en logs, alertalo
- **Missing error handling**: Si una operacion de I/O no tiene manejo de errores, sugiere agregarlo

## Sugerencias de mejora

- **Idempotencia**: Si una operacion de escritura no es idempotente, sugiere como hacerla
- **Observabilidad**: Si un servicio no tiene metricas o health check, sugiere agregarlos
- **Documentar decisiones**: Si se toma una decision tecnica importante, sugiere documentarla como ADR
