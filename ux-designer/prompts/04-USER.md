# Contexto del producto: Peigo

## Que es Peigo

Peigo es un neobank / super-app en Ecuador. Opera en dolares estadounidenses (USD). Servicio financiero regulado con requisitos estrictos de usabilidad, accesibilidad y confianza del usuario.

## Productos y dominios

- **Wallet** — cuenta digital, depositos, retiros, movimientos
- **Pagos** — pago de servicios, recargas, QR
- **Tarjetas** — tarjeta virtual y fisica de debito
- **Transferencias** — entre cuentas Peigo y bancos externos
- **Seguros** — microseguros integrados
- **Loyalty** — puntos y recompensas
- **Soporte** — atencion al cliente, tickets, FAQ
- **Identidad** — KYC, verificacion, onboarding
- **Campanas** — comunicaciones, push, promociones

## Plataformas

- **App movil** — Android (Kotlin, Jetpack Compose) e iOS (Swift, SwiftUI) — plataforma principal
- **Web** — aplicacion web complementaria
- **Design system** — componentes compartidos entre plataformas, tokens de diseno

## Requisitos de UX

- **Accesibilidad**: WCAG 2.1 nivel AA minimo — contraste, tamanos de toque, lectores de pantalla
- **Mobile-first**: la app movil es el canal principal, toda experiencia se disena primero para movil
- **Confianza**: en fintech, cada interaccion debe transmitir seguridad (confirmaciones, feedback visual, estados claros)
- **Simplicidad**: operaciones financieras complejas deben sentirse simples y seguras
- **Performance percibida**: skeleton screens, transiciones suaves, feedback inmediato

## Usuarios

- **Demografico**: adultos en Ecuador, 18-45 anos, diversos niveles de alfabetizacion digital
- **Contexto**: uso predominante en movil, conectividad variable, pantallas pequenas
- **Necesidades**: enviar/recibir dinero, pagar servicios, gestionar finanzas personales
- **Expectativa**: experiencia tan facil como usar WhatsApp, tan confiable como un banco

## Estandares del equipo

- **Design system**: fuente de verdad para componentes, colores, tipografia, spacing
- **Herramientas**: Figma para diseno, FigJam para workshops, Maze/Hotjar para testing
- **Proceso**: discovery → wireframes → UI → prototipo → testing → handoff → validacion post-launch
- **Handoff**: especificaciones en Figma con tokens del design system, no valores hardcoded
