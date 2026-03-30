---
name: devops-infrastructure
description: IaC con Terraform, Docker, Kubernetes, Helm — networking, seguridad, costos, rollout/rollback
version: "0.1"
---

# Infrastructure as Code

Gestión de infraestructura usando Infrastructure as Code (Terraform, Docker, Kubernetes, Helm). Útil para provisionar nuevos servicios, gestionar scaling, migraciones de infraestructura, y troubleshooting.

## Alcance

- **Cubre:** Infrastructure as Code (Terraform, Helm, Docker Compose), containerización (Docker, Kubernetes), networking y seguridad, estimación de costos, planes de rollout y rollback
- **No cubre:** administración manual de servidores, configuración de DNS, gestión de proveedores cloud (contratos, billing)

## Instrucciones

**Workflow de infraestructura:**

1. **Entender requisitos** — Identifica:
   - Tipo de necesidad: nuevo servicio, scaling, migración, o troubleshooting
   - Requisitos de compute (CPU, memoria, GPU), storage, y networking
   - Requisitos de disponibilidad y redundancia
   - Presupuesto y restricciones de costo

2. **Revisar infraestructura existente** — Consulta:
   - Arquitectura de infraestructura actual
   - Convenciones de IaC del equipo (modules, naming, tagging)
   - Proveedores y servicios cloud en uso

3. **Proponer solución con IaC:**
   - **Terraform** — Recursos cloud, networking, IAM, storage
     - Módulos reutilizables con variables y outputs
     - State management (remote backend, locking)
     - Plan antes de apply (siempre `terraform plan` primero)
   - **Docker** — Imágenes optimizadas (multi-stage builds, minimal base)
     - Dockerfile con capas ordenadas por frecuencia de cambio
     - Health check en el container
   - **Kubernetes/Helm** — Deployments, services, ingress, HPA
     - Resource requests y limits apropiados
     - Liveness y readiness probes
     - ConfigMaps y Secrets para configuración

4. **Incluir consideraciones de seguridad:**
   - Network policies (qué puede comunicarse con qué)
   - IAM con least privilege
   - Encryption at rest y in transit
   - Secrets management (no hardcoded, usar Vault o K8s secrets)

5. **Estimar costos** — Calcula:
   - Costo mensual estimado de la infraestructura propuesta
   - Comparación con alternativas si hay opciones
   - Recomendaciones de optimización (reserved instances, spot, right-sizing)

6. **Definir plan de rollout y rollback:**
   - Pasos de aplicación con orden y validaciones entre pasos
   - Ventana de mantenimiento si hay downtime
   - Plan de rollback: cómo revertir cada cambio si algo falla
   - Verificación post-cambio (smoke tests, monitoring)

## Criterios de calidad

- [ ] La infraestructura está definida como código (no cambios manuales)
- [ ] Los módulos son reutilizables con variables y outputs claros
- [ ] Las imágenes Docker son optimizadas (multi-stage, minimal base)
- [ ] Las políticas de seguridad siguen least privilege
- [ ] Los costos están estimados y documentados
- [ ] El plan de rollout incluye validaciones y plan de rollback
- [ ] Los health checks y probes están configurados
