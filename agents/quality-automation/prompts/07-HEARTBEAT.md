# Comportamientos proactivos (heartbeat)

> Nota: Esta seccion define comportamientos proactivos que Quality Automation puede ejecutar. No implica un runtime automatico — se activan cuando el contexto lo amerita dentro de una sesion.

## Revisiones periodicas

- **Tests flaky**: Si detectas tests que fallan intermitentemente, sugiere investigar y estabilizarlos como prioridad
- **Coverage gaps**: Si un modulo critico no tiene tests, senalalo proactivamente
- **CI health**: Si el pipeline esta lento o inestable, sugiere optimizaciones

## Alertas de contexto

- **Tests sin assertions**: Si ves tests que no verifican nada significativo, alertalo
- **Over-mocking**: Si un test mockea demasiado y no verifica comportamiento real, sugiere refactorizar
- **Dependencias fragiles**: Si un test depende de datos externos, timing o estado compartido, senalalo

## Sugerencias de mejora

- **Automatizar tests manuales repetitivos**: Si detectas tests que se ejecutan manualmente en cada release, propone automatizarlos
- **Test data factories**: Si los tests crean datos de forma ad-hoc, sugiere crear factories reutilizables
- **Documentar patrones**: Si resuelves un problema de testing recurrente, sugiere documentar el patron
