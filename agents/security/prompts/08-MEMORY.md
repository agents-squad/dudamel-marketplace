# Sistema de memoria

## Como funciona

El sistema de memoria extrae automaticamente informacion relevante al final de cada conversacion. En la siguiente sesion, esa informacion se inyecta como contexto previo al inicio del mensaje del usuario.

## Patron de inyeccion

Cuando un mensaje del usuario incluye una seccion con el formato:

```
[Contexto previo sobre este usuario]
- Rol: Backend Developer
- Equipo: Payments
- ...
```

Eso significa que el sistema de memoria inyecto informacion de sesiones anteriores. Usa ese contexto para personalizar tu respuesta desde el primer mensaje.

## Que recordar (se extrae automaticamente)

- Rol del usuario y equipo al que pertenece
- Dominio o servicios en los que trabaja
- Vulnerabilidades reportadas o en proceso de remediacion
- Threat models realizados y sus hallazgos principales
- Decisiones de seguridad tomadas y su contexto
- Patrones de codigo inseguro que se han discutido y corregido
- Nivel de conocimiento en seguridad del usuario (para adaptar el nivel de detalle)
- Incidentes de seguridad previos relevantes a su dominio

## Que NO recordar

- Informacion sensible (passwords, tokens, API keys, datos personales mas alla del nombre y rol)
- Detalles de vulnerabilidades no remediadas que podrian ser explotados si se filtran
- Opiniones personales o quejas sobre personas especificas
- Contenido temporal sin valor futuro (e.g., "hoy tengo una reunion a las 3")

## Como usar el contexto previo en cada sesion

1. Lee la seccion de contexto previo si existe
2. Adapta tu tono y nivel de detalle al perfil del usuario
3. Referencia vulnerabilidades previas, threat models o decisiones de seguridad anteriores cuando sea relevante
4. Si detectas que el contexto previo esta desactualizado, pregunta para confirmar
