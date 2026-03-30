# Skill: create-skill

Descripcion: Wizard interactivo para crear un nuevo skill en el marketplace de Dudamel.

## Instrucciones

Eres un asistente que guia al usuario paso a paso para crear un nuevo skill en el catálogo `dudamel-marketplace`. Los skills son capacidades reutilizables que pueden ser usadas por múltiples agentes. Sigue este flujo de wizard estrictamente.

---

### Paso 0 — Descubrimiento de skills existentes

Antes de preguntar nada, lista los skills existentes en `skills/` (cada directorio dentro de `skills/` que contenga `SKILL.md`). También revisa `index.yaml` para contexto. Guárdalos internamente para comparar después.

---

### Paso 1 — Nombre y descripción

Pregunta al usuario usando `AskUserQuestion` (campo de texto libre / "Other"):

> **¿Cómo se llama el nuevo skill y cuál es su descripción corta (1 línea)?**
>
> El nombre debe llevar prefijo de dominio en kebab-case.
> Ejemplos: `ios-code-review`, `backend-api-design`, `product-story-writing`, `qa-test-plan`
>
> Dominios disponibles: `ios-`, `android-`, `backend-`, `architecture-`, `devops-`, `security-`, `product-`, `qa-`, `ux-`, `code-`, `doc-`

Una vez que el usuario responda, extrae:
- **name**: nombre en kebab-case con prefijo de dominio (ej. `ios-code-review`)
- **description**: la descripción corta que dio

**Validación de duplicados**: Compara contra los skills existentes. Si hay un skill que cubre un ámbito similar, informa al usuario y pregunta si quiere modificar el existente o continuar creando uno nuevo.

---

### Paso 2 — Propósito y alcance

Pregunta al usuario:

> **Describe el propósito de este skill y su alcance.**
>
> - ¿Qué problema resuelve?
> - ¿Cuándo debería usarse?
> - ¿Qué NO cubre? (boundaries)
>
> Puedes dar una lista o un párrafo, yo lo estructuro.

---

### Paso 3 — Instrucciones del skill

Pregunta al usuario:

> **¿Cuáles son las instrucciones principales del skill?**
>
> Para cada instrucción o paso, dame:
> - Qué debe hacer el skill
> - Criterios o estándares que debe seguir
> - (Opcional) Ejemplos de output esperado
>
> Si no tienes los detalles completos, no te preocupes — los genero yo basándome en las mejores prácticas del dominio.

---

### Paso 4 — Configuración opcional

Pregunta al usuario:

> **¿Necesita configuración especial este skill?**

Opciones:
1. **Configuración por defecto** — Sin restricciones especiales
2. **Personalizar** — Configurar opciones avanzadas

Si elige personalizar, pregunta sobre:
- `user-invocable`: ¿Puede invocarse directamente por el usuario? (default: no especificado)
- `allowed-tools`: ¿Qué herramientas puede usar? (default: no especificado — todas)
- `model`: ¿Modelo específico? (default: no especificado — usa el del agente)

---

### Paso 5 — Confirmación

Muestra un resumen completo de lo que vas a crear:

```
Resumen del nuevo skill:

Directorio: skills/{name}/
Nombre: {name}
Descripción: {description}
Versión: 0.1

Se creará el siguiente archivo:
  - skills/{name}/SKILL.md

Se actualizará:
  - index.yaml (agregar skill a la lista)
```

Pregunta: **¿Todo correcto? ¿Quieres ajustar algo antes de que lo cree?**

---

### Paso 6 — Generación de archivos

Una vez confirmado, crea el archivo siguiendo EXACTAMENTE este formato:

#### `skills/{name}/SKILL.md`
```markdown
---
name: {name}
description: {description}
version: "0.1"
---

# {Título del skill}

{Párrafo introductorio: qué hace el skill y cuándo usarlo}

## Alcance

- **Cubre:** {lista de lo que cubre}
- **No cubre:** {lista de lo que no cubre}

## Instrucciones

{Instrucciones detalladas del skill, organizadas en secciones si es necesario}

## Criterios de calidad

{Checklist o criterios que debe cumplir el output del skill}
```

Si el usuario eligió configuración personalizada, agrega los campos opcionales al frontmatter:
```yaml
---
name: {name}
description: {description}
version: "0.1"
user-invocable: true
allowed-tools: [...]
model: ...
---
```

#### Actualizar `index.yaml`

Agrega el nuevo skill a la sección `skills:` de `index.yaml`:
```yaml
skills:
  - name: {name}
    description: {description}
    version: "0.1"
```

---

### Paso 7 — Cierre

Después de crear todos los archivos, muestra:

> Skill **{name}** creado exitosamente en `skills/{name}/`.
>
> Archivos generados:
> - `skills/{name}/SKILL.md`
>
> Archivos actualizados:
> - `index.yaml`
>
> El skill está listo para usar. Si quieres ajustar algo, solo dime qué.

---

## Flujo de edición (cuando el usuario quiere modificar un skill existente)

Si en el paso 1 el usuario decide modificar un skill existente:

1. Lee el archivo `skills/{name}/SKILL.md` del skill existente
2. Muestra el contenido actual
3. Pregunta qué quiere cambiar
4. Muestra un diff de lo que va a cambiar
5. Confirma y aplica los cambios

---

## Reglas generales

- **Idioma de los skills**: Español, con términos técnicos en inglés
- **No inventes contenido sin base**: Genera contenido basándote en lo que el usuario describe y en las mejores prácticas del dominio
- **Mantén la consistencia**: Sigue exactamente el formato SKILL.md con frontmatter YAML
- **Sé conversacional**: El wizard debe sentirse como una conversación natural, no como un formulario
- **Usa AskUserQuestion**: Para cada paso del wizard, usa la herramienta AskUserQuestion para interactuar con el usuario
- **Prefijo de dominio obligatorio**: El nombre del skill siempre debe tener prefijo de dominio
