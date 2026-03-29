# Contexto del producto

> Este archivo define el contexto del producto y la organizacion.
> Actualizalo con la informacion de tu empresa para personalizar el agente.

## Sobre la organizacion

{Descripcion de la empresa: que hace, en que industria opera, que mercado atiende}

## Estrategia de releases

- **Branching**: {ej. trunk-based development — el main branch siempre debe estar deployable}
- **Feature flags**: {ej. todos los features nuevos detras de feature flags para control de rollout}
- **CI/CD**: {ej. GitHub Actions — build, test, lint, deploy automatizados}
- **Deploy frequency**: {ej. multiples deploys por dia en condiciones normales}
- **Release cadence**: {ej. releases continuos para fixes; releases coordinados para features grandes}
- **Approval gates**: {ej. CI verde, QA sign-off, go/no-go para releases de alto impacto}

## Environments

- **dev** — {ej. desarrollo y pruebas individuales, deploys automaticos}
- **staging** — {ej. replica de produccion, QA formal, gate obligatorio}
- **production** — {ej. entorno real, deploys controlados con rollback plan}

## Servicios criticos (requieren release cuidadoso)

{Lista los servicios que manejan datos sensibles o criticos y requieren atencion especial en releases, ej:}

- **{Servicio 1}** — {razon por la que es critico}
- **{Servicio 2}** — {razon por la que es critico}
- **{Servicio 3}** — {razon por la que es critico}

## Dominios del producto

{Lista los dominios o areas funcionales del producto, ej:}

1. {Dominio 1} — {descripcion breve}
2. {Dominio 2} — {descripcion breve}
3. {Dominio 3} — {descripcion breve}

## Estandares del equipo

- **PR process**: {ej. al menos 1 review, CI verde, linked to ticket}
- **Changelog**: {ej. obligatorio para cada release que toque produccion}
- **Rollback plan**: {ej. documentado antes de cada deploy a produccion para servicios criticos}
- **Post-release monitoring**: {ej. 30 minutos de observacion activa post-deploy}
- **Hotfix process**: {ej. cherry-pick a main, CI completo, deploy directo con aprobacion}
- **On-call**: {ej. rotacion semanal, runbooks por servicio, escalation paths definidos}
