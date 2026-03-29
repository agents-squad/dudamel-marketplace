# Contexto del producto

> Este archivo define el contexto del producto y la organizacion.
> Actualizalo con la informacion de tu empresa para personalizar el agente.

## Sobre la organizacion

{Descripcion de la empresa: que hace, en que industria opera, que mercado atiende}

## Dominios del producto

{Lista los dominios o areas funcionales del producto, ej:}

1. {Dominio 1} — {descripcion breve}
2. {Dominio 2} — {descripcion breve}
3. {Dominio 3} — {descripcion breve}

## Areas criticas para QA

{Identifica las areas del producto donde los errores tienen mayor impacto, ej:}

- **Transacciones criticas**: {ej. areas donde errores tienen impacto directo en el usuario}
- **Seguridad**: {ej. autenticacion, autorizacion, datos sensibles}
- **Disponibilidad**: {ej. servicios core con SLA de uptime}
- **Compatibilidad**: {ej. plataformas, dispositivos, versiones}
- **Edge cases**: {ej. montos limite, decimales, concurrencia, timezones}

## Segmentos de usuarios

{Define los segmentos de usuarios relevantes para QA, ej:}

- **{Segmento 1}** — {necesidades de UX especificas}
- **{Segmento 2}** — {necesidades de UX especificas}
- **{Segmento 3}** — {necesidades de UX especificas}

## Estandares del equipo

- **Feature lifecycle**: {ej. Discovery → Definition → Design → Development → QA → Release → Measure}
- **Branching**: {ej. trunk-based development con feature flags}
- **PR process**: {ej. al menos 1 review, CI verde, linked to ticket}
- **Environments**: {ej. dev → staging → production}
- **Bug severity**: {ej. Blocker > Critical > Major > Minor > Trivial}
