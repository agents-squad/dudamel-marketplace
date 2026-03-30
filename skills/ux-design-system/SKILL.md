---
name: ux-design-system
description: Gestión del design system — componentes, tokens, guías de estilo, variantes, estados, accesibilidad
version: "0.1"
---

# Design System

Gestión y evolución del design system: componentes reutilizables, tokens de diseño, guías de estilo, variantes, estados, y accesibilidad. Útil para crear nuevos componentes, extender existentes, auditar consistencia, y documentar guías de uso.

## Alcance

- **Cubre:** especificación de componentes (variantes, estados, tokens), guías de uso (cuándo usar, cuándo no), accesibilidad (WCAG), documentación del design system, auditoría de consistencia
- **No cubre:** implementación de código de componentes, configuración de herramientas de diseño (Figma), testing visual automatizado

## Instrucciones

**Workflow de design system:**

1. **Identificar la necesidad** — Determina:
   - ¿Nuevo componente, variante de uno existente, actualización, o auditoría?
   - ¿Quién lo necesita? (diseño, iOS, Android, web)
   - ¿En qué contextos se usará?

2. **Revisar inventario actual** — Consulta:
   - Componentes existentes en el design system
   - Guías de estilo establecidas (tipografía, colores, spacing)
   - ¿Se puede reutilizar o extender un componente existente?

3. **Especificar el componente:**

   ```
   ## {Nombre del componente}

   ### Descripción
   {Qué es y para qué se usa}

   ### Variantes
   - {Variante 1}: {cuándo usarla}
   - {Variante 2}: {cuándo usarla}

   ### Estados
   - Default
   - Hover / Pressed
   - Focused
   - Disabled
   - Loading
   - Error / Success

   ### Props / Configuración
   | Prop | Tipo | Default | Descripción |
   |------|------|---------|-------------|

   ### Tokens de diseño
   - **Colores:** {referencia a tokens: primary, secondary, semantic}
   - **Tipografía:** {font-family, size, weight, line-height}
   - **Spacing:** {padding, margin usando escala del sistema}
   - **Border radius:** {referencia a token}
   - **Elevation/Shadow:** {referencia a token}

   ### Accesibilidad
   - Contraste mínimo: {AA o AAA, ratio}
   - Role ARIA: {role apropiado}
   - Keyboard navigation: {Tab, Enter, Escape behavior}
   - Screen reader: {qué se anuncia}

   ### Guías de uso
   - **Cuándo usar:** {escenarios apropiados}
   - **Cuándo NO usar:** {escenarios donde otro componente es mejor}
   - **Ejemplos:** {screenshots o descripciones de uso correcto}
   - **Anti-patterns:** {ejemplos de uso incorrecto}
   ```

4. **Validar accesibilidad:**
   - Contraste de colores (WCAG 2.1 AA mínimo: 4.5:1 texto, 3:1 elementos)
   - Navegación por teclado (Tab, Enter, Escape, Arrow keys)
   - Screen reader compatible (labels, roles, announcements)
   - Touch targets mínimo 44x44 points (mobile)
   - Motion reducida respetada (prefers-reduced-motion)

5. **Documentar guías de uso:**
   - Cuándo usar y cuándo no usar el componente
   - Ejemplos de composición con otros componentes
   - Limitaciones conocidas
   - Plataformas soportadas (web, iOS, Android)

## Criterios de calidad

- [ ] El componente tiene variantes y estados documentados
- [ ] Los tokens de diseño usan la escala del sistema (no valores hardcoded)
- [ ] La accesibilidad cumple WCAG 2.1 AA mínimo
- [ ] Las guías de uso incluyen cuándo usar y cuándo no usar
- [ ] Los anti-patterns están documentados
- [ ] La especificación es implementable por desarrollo sin ambigüedad
- [ ] El componente es consistente con el resto del design system
