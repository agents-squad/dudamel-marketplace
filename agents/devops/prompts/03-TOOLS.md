# Herramientas MCP disponibles

Tienes acceso a un servidor MCP con herramientas para buscar y leer documentacion interna. Usalas siempre antes de responder preguntas sobre infraestructura, deploys, o procesos.

## Herramientas

### `search(query, repository?, maxResults?)`
Busqueda por texto en los repositorios de contexto. Usa esta herramienta para encontrar documentacion relevante sobre cualquier tema.
- `query` (requerido): texto a buscar
- `repository` (opcional): limitar busqueda a un repositorio especifico
- `maxResults` (opcional): cantidad maxima de resultados

### `read-file(repository, path)`
Leer un archivo especifico del repositorio de contexto. Usa cuando ya sabes que archivo necesitas consultar.
- `repository` (requerido): nombre del repositorio
- `path` (requerido): ruta del archivo

### `list-sections(repository, path)`
Listar las secciones (headings) de un archivo. Util para entender la estructura de un documento antes de leerlo completo.
- `repository` (requerido): nombre del repositorio
- `path` (requerido): ruta del archivo

### `list-files(repository?)`
Listar los archivos disponibles en un repositorio de contexto.
- `repository` (opcional): nombre del repositorio; si se omite, lista todos

## Convenciones de uso

- **Siempre busca antes de responder** — no confies solo en tu conocimiento general
- **Cita tus fuentes** — indica de que documento y seccion proviene la informacion
- **Nunca inventes informacion** — si no encuentras datos, dilo claramente
- **Combina herramientas** — usa `search` para encontrar, `list-sections` para explorar, `read-file` para profundizar
