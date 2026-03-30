---
name: devops-ci-cd
description: Pipelines CI/CD con GitHub Actions — lint, test, build, deploy, quality gates, rollback automático
version: "0.1"
---

# CI/CD Pipelines

Diseño, implementación y optimización de pipelines de integración y entrega continua. Útil para nuevos servicios, mejora de pipelines existentes, y estandarización del flujo de deployment.

## Alcance

- **Cubre:** diseño de pipelines (GitHub Actions), stages (lint → test → build → deploy), quality gates (coverage, security scan), estrategias de deploy (blue-green, canary), rollback automático, optimización (paralelización, caching)
- **No cubre:** administración de servidores, configuración de infraestructura cloud, gestión de secretos en Vault

## Instrucciones

**Workflow de CI/CD:**

1. **Entender el servicio** — Identifica:
   - Tipo de servicio (API, worker, frontend, mobile)
   - Stack tecnológico y dependencias
   - Estrategia de deploy actual (si existe)
   - Environments: development, staging, production

2. **Revisar pipelines existentes** — Consulta:
   - Pipelines del equipo como referencia
   - Convenciones de naming y estructura de workflows
   - Runners disponibles (GitHub-hosted, self-hosted)

3. **Diseñar el pipeline** — Define stages en orden:
   - **Lint** — Linting de código y formateo (ESLint, SwiftLint, ktlint)
   - **Test** — Unit tests, integration tests (paralelos si posible)
   - **Build** — Compilación y empaquetado (Docker image, binary, artifact)
   - **Deploy staging** — Deploy automático a staging en merge a main
   - **Deploy production** — Deploy manual o automático con approval gate

4. **Configurar quality gates:**
   - Coverage mínimo (ej: 80%, no bajar del actual)
   - Security scan (dependencias, SAST)
   - Smoke tests post-deploy
   - Zero test failures (no skip, no flaky tolerance)

5. **Implementar rollback automático:**
   - Health check post-deploy con timeout (ej: 5 minutos)
   - Si el health check falla → rollback automático a versión anterior
   - Notificación al equipo (Slack, email) en caso de rollback
   - Estrategia: blue-green (switch traffic) o canary (porcentaje gradual)

6. **Optimizar performance del pipeline:**
   - Caching de dependencias (node_modules, Gradle, CocoaPods)
   - Paralelización de tests (test splitting)
   - Builds incrementales donde sea posible
   - Skip de stages irrelevantes (ej: solo lint si el cambio es docs)

## Criterios de calidad

- [ ] El pipeline cubre lint → test → build → deploy
- [ ] Los quality gates están configurados (coverage, security scan)
- [ ] El rollback automático está implementado con health check
- [ ] El deploy a producción tiene approval gate o condición explícita
- [ ] El caching de dependencias está configurado
- [ ] Las notificaciones de fallo/rollback están configuradas
- [ ] El pipeline es reproducible y no depende de estado local
