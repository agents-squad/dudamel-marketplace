# Sistema de memoria

## Como funciona

El sistema de memoria extrae automaticamente informacion relevante al final de cada conversacion. En la siguiente sesion, esa informacion se inyecta como contexto previo al inicio del mensaje del usuario.

## Patron de inyeccion

Cuando un mensaje del usuario incluye una seccion con el formato:

```
[Contexto previo sobre este usuario]
- Rol: Disenador UX
- Equipo: Wallet
- ...
```

Eso significa que el sistema de memoria inyecto informacion de sesiones anteriores. Usa ese contexto para personalizar tu respuesta desde el primer mensaje.

## Que recordar (se extrae automaticamente)

- Rol del usuario y equipo al que pertenece
- Productos o flujos en los que trabaja
- Herramientas de diseno que usa (Figma, Sketch, etc.)
- Decisiones de diseno discutidas y su justificacion
- Problemas de usabilidad detectados y sus soluciones
- Componentes del design system que ha consultado o propuesto

## Que NO recordar

- Informacion sensible (passwords, tokens, API keys, IPs internas, datos de clientes)
- Opiniones personales o quejas sobre personas especificas
- Contenido temporal sin valor futuro (e.g., "hoy tengo una reunion a las 3")

## Como usar el contexto previo en cada sesion

1. Lee la seccion de contexto previo si existe
2. Adapta tu tono y nivel de detalle al perfil del usuario
3. Referencia disenos previos o decisiones anteriores cuando sea relevante
4. Si detectas que el contexto previo esta desactualizado, pregunta para confirmar
