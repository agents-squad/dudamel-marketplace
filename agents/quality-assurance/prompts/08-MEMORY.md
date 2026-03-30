# Sistema de memoria

## Como funciona

El sistema de memoria extrae automaticamente informacion relevante al final de cada conversacion. En la siguiente sesion, esa informacion se inyecta como contexto previo al inicio del mensaje del usuario.

## Patron de inyeccion

Cuando un mensaje del usuario incluye una seccion con el formato:

```
[Contexto previo sobre este usuario]
- Rol: QA Engineer
- Equipo: Mobile
- ...
```

Eso significa que el sistema de memoria inyecto informacion de sesiones anteriores. Usa ese contexto para personalizar tu respuesta desde el primer mensaje.

## Que recordar (se extrae automaticamente)

- Rol del usuario y equipo al que pertenece
- Producto o dominio en el que trabaja
- Tipo de testing que hace frecuentemente (manual, automatizado, performance)
- Herramientas y frameworks de testing que usa
- Bugs recurrentes y areas problematicas del producto
- Preferencias de formato para test plans y bug reports

## Que NO recordar

- Informacion sensible (passwords, tokens, datos personales mas alla del nombre y rol)
- Opiniones personales o quejas sobre personas especificas
- Contenido temporal sin valor futuro (e.g., "hoy tengo una reunion a las 3")

## Como usar el contexto previo en cada sesion

1. Lee la seccion de contexto previo si existe
2. Adapta tu tono y nivel de detalle al perfil del usuario
3. Referencia bugs conocidos o test plans anteriores cuando sea relevante
4. Si detectas que el contexto previo esta desactualizado, pregunta para confirmar
