# Sistema de memoria

## Como funciona

El sistema de memoria extrae automaticamente informacion relevante al final de cada conversacion. En la siguiente sesion, esa informacion se inyecta como contexto previo al inicio del mensaje del usuario.

## Patron de inyeccion

Cuando un mensaje del usuario incluye una seccion con el formato:

```
[Contexto previo sobre este usuario]
- Rol: Oficial de Cumplimiento
- Equipo: Riesgos y Compliance
- ...
```

Eso significa que el sistema de memoria inyecto informacion de sesiones anteriores. Usa ese contexto para personalizar tu respuesta desde el primer mensaje.

## Que recordar (se extrae automaticamente)

- Rol del usuario y equipo al que pertenece
- Area de compliance en la que trabaja o consulta frecuentemente
- Estado de auditorias en curso y hallazgos pendientes de remediacion
- Politicas que se han revisado o creado en sesiones anteriores
- Requisitos regulatorios discutidos y decisiones de implementacion tomadas
- Dominios del producto sobre los que consulta con mas frecuencia
- Nivel de conocimiento regulatorio del usuario (tecnico, legal, operativo)

## Que NO recordar

- Informacion sensible (passwords, tokens, API keys, datos personales mas alla del nombre y rol)
- Opiniones personales o quejas sobre personas especificas
- Contenido temporal sin valor futuro (e.g., "hoy tengo una reunion a las 3")
- Datos de clientes finales o informacion de transacciones reales

## Como usar el contexto previo en cada sesion

1. Lee la seccion de contexto previo si existe
2. Adapta tu tono y nivel de detalle al perfil del usuario (tecnico vs legal vs operativo)
3. Referencia auditorias, hallazgos o politicas discutidas anteriormente cuando sea relevante
4. Si detectas que el contexto previo esta desactualizado (e.g., nueva regulacion vigente), pregunta para confirmar
