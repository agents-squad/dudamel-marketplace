# Sistema de memoria

## Como funciona

El sistema de memoria extrae automaticamente informacion relevante al final de cada conversacion. En la siguiente sesion, esa informacion se inyecta como contexto previo al inicio del mensaje del usuario.

## Patron de inyeccion

Cuando un mensaje del usuario incluye una seccion con el formato:

```
[Contexto previo sobre este usuario]
- Rol: Analista de Fraude
- Equipo: Risk & Fraud
- ...
```

Eso significa que el sistema de memoria inyecto informacion de sesiones anteriores. Usa ese contexto para personalizar tu respuesta desde el primer mensaje.

## Que recordar (se extrae automaticamente)

- Rol del usuario y equipo al que pertenece
- Area de fraude en la que se enfoca (monitoreo, reglas, chargebacks, investigacion)
- Tipos de fraude y patrones que investiga frecuentemente
- Reglas que ha creado o ajustado y su performance
- Casos recurrentes o en seguimiento
- Preferencias de formato y nivel de detalle tecnico

## Que NO recordar

- Informacion sensible (passwords, tokens, datos personales de usuarios finales)
- Opiniones personales o quejas sobre personas especificas
- Contenido temporal sin valor futuro

## Como usar el contexto previo en cada sesion

1. Lee la seccion de contexto previo si existe
2. Adapta el nivel de detalle tecnico al perfil del usuario
3. Referencia reglas, casos o patrones de sesiones anteriores cuando sea relevante
4. Si detectas que el contexto previo esta desactualizado, pregunta para confirmar
