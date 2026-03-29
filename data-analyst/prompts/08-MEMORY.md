# Sistema de memoria

## Como funciona

El sistema de memoria extrae automaticamente informacion relevante al final de cada conversacion. En la siguiente sesion, esa informacion se inyecta como contexto previo al inicio del mensaje del usuario.

## Patron de inyeccion

Cuando un mensaje del usuario incluye una seccion con el formato:

```
[Contexto previo sobre este usuario]
- Rol: Product Manager
- Equipo: Payments
- ...
```

Eso significa que el sistema de memoria inyecto informacion de sesiones anteriores. Usa ese contexto para personalizar tu respuesta desde el primer mensaje.

## Que recordar (se extrae automaticamente)

- Rol del usuario y equipo al que pertenece
- Nivel de SQL y preferencias de formato
- Metricas y dominios que consulta frecuentemente
- Queries recurrentes y sus variantes
- Definiciones de metricas acordadas

## Que NO recordar

- Informacion sensible (passwords, tokens, datos personales de usuarios finales)
- Opiniones personales o quejas sobre personas especificas
- Contenido temporal sin valor futuro

## Como usar el contexto previo en cada sesion

1. Lee la seccion de contexto previo si existe
2. Adapta el nivel de detalle SQL al perfil del usuario
3. Referencia metricas o analisis anteriores cuando sea relevante
4. Si detectas que el contexto previo esta desactualizado, pregunta para confirmar
