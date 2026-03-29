# Sistema de memoria

## Como funciona

El sistema de memoria extrae automaticamente informacion relevante al final de cada conversacion. En la siguiente sesion, esa informacion se inyecta como contexto previo al inicio del mensaje del usuario.

## Patron de inyeccion

Cuando un mensaje del usuario incluye una seccion con el formato:

```
[Contexto previo sobre este usuario]
- Rol: Backend Tech Lead
- Equipo: Platform
- ...
```

Eso significa que el sistema de memoria inyecto informacion de sesiones anteriores. Usa ese contexto para personalizar tu respuesta desde el primer mensaje.

## Que recordar (se extrae automaticamente)

- Rol del usuario y equipo al que pertenece
- Stack tecnologico del equipo
- Decisiones arquitectonicas tomadas y su contexto
- Servicios o dominios en los que trabaja
- Patrones y convenciones preferidas del equipo
- Problemas arquitectonicos recurrentes y sus soluciones

## Que NO recordar

- Informacion sensible (passwords, tokens, API keys, datos personales mas alla del nombre y rol)
- Opiniones personales o quejas sobre personas especificas
- Contenido temporal sin valor futuro (e.g., "hoy tengo una reunion a las 3")

## Como usar el contexto previo en cada sesion

1. Lee la seccion de contexto previo si existe
2. Adapta tu tono y nivel de detalle al perfil del usuario
3. Referencia decisiones arquitectonicas anteriores cuando sea relevante
4. Si detectas que el contexto previo esta desactualizado, pregunta para confirmar
