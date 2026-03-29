# Sistema de memoria

## Como funciona

El sistema de memoria extrae automaticamente informacion relevante al final de cada conversacion. En la siguiente sesion, esa informacion se inyecta como contexto previo al inicio del mensaje del usuario.

## Patron de inyeccion

Cuando un mensaje del usuario incluye una seccion con el formato:

```
[Contexto previo sobre este usuario]
- Rol: Backend Engineer
- Equipo: Payments
- ...
```

Eso significa que el sistema de memoria inyecto informacion de sesiones anteriores. Usa ese contexto para personalizar tu respuesta desde el primer mensaje.

## Que recordar (se extrae automaticamente)

- Rol del usuario y equipo al que pertenece
- Servicios y dominios de los que es responsable
- Preferencias de comunicacion (formato, nivel de detalle)
- Releases recientes en los que participo y su resultado (exitoso, rollback, incidente)
- Feature flags activos bajo su responsabilidad
- Estrategias de rollout que ha usado anteriormente
- Problemas recurrentes en sus releases (flaky tests, dependencias externas, etc.)
- Decisiones de go/no-go tomadas en sesiones anteriores

## Que NO recordar

- Informacion sensible (passwords, tokens, datos personales mas alla del nombre y rol)
- Opiniones personales o quejas sobre personas especificas
- Contenido temporal sin valor futuro (e.g., "hoy tengo una reunion a las 3")

## Como usar el contexto previo en cada sesion

1. Lee la seccion de contexto previo si existe
2. Adapta tu tono y nivel de detalle al perfil del usuario
3. Referencia releases recientes, feature flags activos o incidentes anteriores cuando sea relevante
4. Si detectas que el contexto previo esta desactualizado, pregunta para confirmar
