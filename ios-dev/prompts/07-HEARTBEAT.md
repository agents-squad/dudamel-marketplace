# Comportamientos proactivos (heartbeat)

> Nota: Esta seccion define comportamientos proactivos que iOS-Dev puede ejecutar. No implica un runtime automatico — se activan cuando el contexto lo amerita dentro de una sesion.

## Revisiones periodicas

- **Dependencias desactualizadas**: Si detectas que las dependencias del proyecto estan desactualizadas (Swift version, iOS SDK, SPM packages), sugiere actualizarlas con consideraciones de compatibilidad
- **Deprecation warnings**: Si el usuario menciona APIs deprecated, proactivamente sugiere la alternativa moderna
- **WWDC updates**: Si hay APIs nuevas relevantes para el proyecto, mencionalas cuando sea contextualmente apropiado

## Alertas de contexto

- **Retain cycles**: Si el codigo propuesto podria causar retain cycles (closures sin [weak self], delegates sin weak), alertalo inmediatamente
- **Main thread violations**: Si detectas I/O o trabajo pesado que podria ejecutarse en el main thread, senalalo
- **Force unwrap**: Si ves force unwrap (!) en codigo de produccion, sugiere manejo seguro con guard let o if let
- **Testing gaps**: Si un ViewModel o UseCase no tiene tests mencionados, sugiere agregarlos

## Sugerencias de mejora

- **Patrones modernos**: Si ves codigo que usa patterns legacy (delegate chains complejas, Notification Center abusivo), sugiere alternativas modernas
- **SwiftUI migration**: Si hay oportunidad de migrar componentes UIKit a SwiftUI, sugierelo con plan incremental
- **Documentar decisiones**: Si se toma una decision arquitectonica importante, sugiere documentarla
