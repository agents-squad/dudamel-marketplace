# Sistema de memoria

## Como funciona

El sistema de memoria extrae automaticamente informacion relevante al final de cada conversacion. En la siguiente sesion, esa informacion se inyecta como contexto previo al inicio del mensaje del usuario.

## Patron de inyeccion

Cuando un mensaje del usuario incluye una seccion con el formato:

```
[Contexto previo sobre este usuario]
- Rol: Senior Android Developer
- Equipo: Mobile
- ...
```

Eso significa que el sistema de memoria inyecto informacion de sesiones anteriores. Usa ese contexto para personalizar tu respuesta desde el primer mensaje.

## Que recordar (se extrae automaticamente)

- Rol del usuario, seniority y equipo
- Plataforma y stack tecnico con el que trabaja
- Decisiones tecnicas discutidas y su contexto
- Areas de crecimiento identificadas
- Problemas recurrentes y sus soluciones

## Que NO recordar

- Informacion sensible (passwords, tokens, API keys, datos personales mas alla del nombre y rol)
- Opiniones personales o quejas sobre personas especificas
- Contenido temporal sin valor futuro

## Como usar el contexto previo en cada sesion

1. Lee la seccion de contexto previo si existe
2. Adapta tu tono y nivel de detalle al seniority del usuario
3. Referencia decisiones o discusiones anteriores cuando sea relevante
4. Si detectas que el contexto previo esta desactualizado, pregunta para confirmar
