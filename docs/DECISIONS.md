# DECISIONS.md

## Portada

- **Documento:** DECISIONS.md
- **Proyecto:** Kalu App Flutter
- **Uso:** registro de decisiones del proyecto
- **Autor/desarrollador:** JedE21
- **Estado:** documento vivo

## Proposito Del Documento

Este archivo registra decisiones tecnicas, visuales, de arquitectura y de producto tomadas durante el desarrollo de Kalu App Flutter.

Su objetivo es evitar confusiones futuras, mantener coherencia entre sprints y ayudar a que cualquier persona o agente IA entienda por que el proyecto avanza de una forma determinada.

## Regla Principal

Cada decision importante debe documentarse con:

- Fecha.
- Decision.
- Contexto.
- Motivo.
- Impacto.
- Estado.

No todas las tareas necesitan una entrada. Este documento debe reservarse para decisiones que afecten arquitectura, tecnologia, backend, diseno base, flujo de usuario, herramientas o reglas permanentes del proyecto.

## Formato Oficial De Decision

```markdown
## YYYY-MM-DD - Titulo de la decision

**Decision:**
Texto de la decision.

**Contexto:**
Situacion o problema.

**Motivo:**
Por que se decidio eso.

**Impacto:**
Que cambia en el proyecto.

**Estado:**
Aprobada / En revision / Reemplazada.
```

## Decisiones Iniciales Del Proyecto

- Usar Flutter como tecnologia principal.
- Priorizar Android como primera plataforma.
- Usar VS Code como entorno principal de desarrollo.
- Usar Codex como asistente/agente de desarrollo.
- Usar Git y GitHub desde el inicio.
- Trabajar por sprints y versiones.
- Crear primero una V1 con datos mock/locales.
- Integrar Supabase en una version posterior.
- Usar pedido por WhatsApp en la V1.
- Crear un Design System antes de seguir creciendo.
- Crear componentes reutilizables.
- Mantener documentacion tecnica dentro de `docs/`.
- Usar `REVIEW_CHECKLIST.md` antes de cerrar tareas.

## 2026-06-26 - Usar Flutter Como Tecnologia Principal

**Decision:**
Kalu App Flutter usara Flutter y Dart como base principal de desarrollo.

**Contexto:**
El proyecto necesita una aplicacion movil moderna, visual, comercial y preparada para crecer a mas de una plataforma.

**Motivo:**
Flutter permite crear app Android e iOS con una sola base de codigo, ofrece buen rendimiento, facilita interfaces visuales modernas y encaja con el objetivo de crear una app tipo tienda online para una pasteleria artesanal.

**Impacto:**
El codigo principal vive en `lib/`, la interfaz se construye con widgets Flutter y las decisiones tecnicas deben respetar las convenciones de Dart y Flutter.

**Estado:**
Aprobada.

## 2026-06-26 - Priorizar Android Primero

**Decision:**
La primera plataforma de validacion sera Android.

**Contexto:**
El desarrollo se realiza en Windows y el Android Emulator esta disponible para pruebas locales.

**Motivo:**
iOS requiere macOS y Xcode. Android es suficiente para validar la primera version, probar navegacion, revisar la UI y confirmar el flujo comercial inicial.

**Impacto:**
Las pruebas principales se hacen en Android Emulator. iOS queda como soporte futuro y no debe configurarse antes de la fase definida.

**Estado:**
Aprobada.

## 2026-06-26 - Usar VS Code Como Entorno Principal

**Decision:**
El desarrollo del proyecto se realizara principalmente desde VS Code.

**Contexto:**
El proyecto se trabaja en Windows y el flujo actual combina Flutter, terminal, Git y apoyo de Codex.

**Motivo:**
VS Code permite trabajar con Flutter de forma ligera, revisar archivos rapido, usar terminal integrada y mantener un flujo simple por sprints.

**Impacto:**
Las instrucciones del proyecto deben ser compatibles con VS Code y comandos de terminal como `flutter analyze`, `flutter run` y Git.

**Estado:**
Aprobada.

## 2026-06-26 - Usar Codex Como Asistente De Desarrollo

**Decision:**
Codex se usara como asistente/agente de desarrollo para implementar, revisar y documentar cambios.

**Contexto:**
El proyecto avanza por tareas pequenas donde es importante respetar alcance, documentacion y restricciones del sprint.

**Motivo:**
Codex ayuda a crear codigo, revisar estructura, mantener documentacion y acelerar avances sin perder trazabilidad si sigue las reglas del proyecto.

**Impacto:**
Codex debe leer los documentos base antes de cambios importantes, respetar el sprint activo, no inventar funcionalidades y reportar con claridad que modifico.

**Estado:**
Aprobada.

## 2026-06-26 - Usar Git Y GitHub Desde El Inicio

**Decision:**
El proyecto usara Git y GitHub para versionar cambios desde las primeras fases.

**Contexto:**
Kalu App necesita historial, respaldo y control de cambios a medida que crecen pantallas, componentes y documentacion.

**Motivo:**
Git permite guardar historial, volver atras si Codex rompe algo, trabajar por commits claros y usar GitHub como respaldo del proyecto.

**Impacto:**
Antes de cerrar tareas importantes se debe revisar `git status` y `git diff`. Los commits deben tener mensajes claros y no deben incluir secretos ni archivos temporales.

**Estado:**
Aprobada.

## 2026-06-26 - Trabajar Por Sprints Y Versiones

**Decision:**
El desarrollo se organizara por sprints pequenos y versiones del producto.

**Contexto:**
La app tiene muchos modulos posibles: Home, categorias, productos, detalle, carrito, checkout, perfil, pedidos y Supabase.

**Motivo:**
Trabajar por sprints evita hacer toda la app de golpe, reduce errores, mantiene el alcance claro y permite validar cada modulo antes de avanzar.

**Impacto:**
No se debe avanzar al siguiente sprint sin aprobacion. Cada sprint debe mantener la app compilable y alineada con `ROADMAP.md` y `TODO.md`.

**Estado:**
Aprobada.

## 2026-06-26 - Crear Primero Una V1 Con Datos Mock Locales

**Decision:**
La V1 usara datos mock/locales antes de conectarse a un backend real.

**Contexto:**
La app necesita validar UI, navegacion, productos, categorias, detalle y carrito antes de depender de datos remotos.

**Motivo:**
Los datos mock permiten avanzar rapido en UI, evitan bloquear el diseno por problemas de backend y facilitan probar navegacion, productos y carrito.

**Impacto:**
Los datos mock deben vivir fuera de las pantallas, usar modelos y quedar preparados para ser reemplazados por Supabase mas adelante.

**Estado:**
Aprobada.

## 2026-06-26 - Integrar Supabase En Una Version Posterior

**Decision:**
Supabase se integrara en una version posterior, cuando la UI base este estable.

**Contexto:**
Kalu ya tiene una logica web compatible con Supabase, pero la app movil aun debe consolidar interfaz, navegacion y flujo comercial.

**Motivo:**
Supabase ofrece PostgreSQL, Auth, Storage y RLS, y es una buena opcion para productos, pedidos, clientes y promociones. No conectarlo al inicio evita complejidad prematura.

**Impacto:**
No se debe conectar Supabase antes de la fase definida. La arquitectura debe mantener modelos, servicios y repositorios preparados para ese reemplazo futuro.

**Estado:**
Aprobada.

## 2026-06-26 - Usar Pedido Por WhatsApp En V1

**Decision:**
La V1 usara pedido por WhatsApp como flujo principal de cierre de compra.

**Contexto:**
Kalu es una pasteleria artesanal y necesita una forma simple de recibir pedidos sin implementar pagos online desde el inicio.

**Motivo:**
WhatsApp es simple para el cliente, practico para un emprendimiento y permite validar la app con clientes reales antes de crear procesos mas complejos.

**Impacto:**
El carrito y checkout deben preparar informacion clara para enviar por WhatsApp. Pagos online, pedidos reales en backend e historial completo quedan para fases posteriores.

**Estado:**
Aprobada.

## 2026-06-26 - Crear Un Design System

**Decision:**
Kalu App tendra un Design System documentado y reutilizable.

**Contexto:**
La app necesita mantener una identidad dulce, moderna, femenina, limpia, premium y comercial en todas sus pantallas.

**Motivo:**
El Design System evita pantallas inconsistentes, mantiene la identidad visual de Kalu, facilita que Codex reutilice componentes y reduce duplicacion de codigo.

**Impacto:**
Toda pantalla o componente nuevo debe respetar `DESIGN_SYSTEM.md`. Los estilos improvisados deben evitarse salvo que exista una razon clara y documentada.

**Estado:**
Aprobada.

## 2026-06-26 - Crear Componentes Reutilizables

**Decision:**
La app usara componentes reutilizables para botones, tarjetas, campos, buscador, banners, productos, categorias, precios, estados y navegacion.

**Contexto:**
Muchas pantallas comparten patrones visuales y funcionales.

**Motivo:**
Los componentes reutilizables reducen duplicacion, mantienen consistencia, facilitan mantenimiento y aceleran el desarrollo de nuevos modulos.

**Impacto:**
Los componentes comunes deben vivir en `shared/widgets` y documentarse en `COMPONENT_LIBRARY.md` cuando correspondan.

**Estado:**
Aprobada.

## 2026-06-26 - Mantener Documentacion Tecnica En docs

**Decision:**
La documentacion tecnica principal se mantendra dentro de la carpeta `docs/`.

**Contexto:**
El proyecto necesita documentos claros para producto, arquitectura, sistema visual, componentes, backend futuro, checklist y decisiones.

**Motivo:**
`docs/` es una estructura clara, facil de entender por humanos y agentes IA, evita depender de carpetas especiales y centraliza el conocimiento del proyecto.

**Impacto:**
Los documentos tecnicos nuevos deben ubicarse en `docs/` salvo que el usuario indique otra ubicacion. Los cambios importantes deben mantenerse sincronizados con los documentos relacionados.

**Estado:**
Aprobada.

## 2026-06-26 - Usar REVIEW_CHECKLIST Antes De Cerrar Tareas

**Decision:**
Codex debe usar `REVIEW_CHECKLIST.md` como referencia antes de cerrar tareas relevantes.

**Contexto:**
El proyecto requiere calidad visual, tecnica, funcional y de alcance en cada sprint o modulo.

**Motivo:**
Un checklist reduce olvidos, ayuda a confirmar que no se rompieron pantallas previas y refuerza buenas practicas antes de commits o cierres de sprint.

**Impacto:**
Antes de cerrar tareas relevantes, Codex debe revisar alcance, archivos modificados, estado de analisis, pendientes y restricciones del sprint.

**Estado:**
Aprobada.

## Reglas Para Agregar Nuevas Decisiones

- Solo registrar decisiones importantes.
- No registrar cambios pequenos.
- Registrar decisiones tecnicas, visuales, de arquitectura o producto.
- Si una decision cambia, no borrar la anterior; marcarla como reemplazada.
- Mantener fecha y explicacion.
- Usar el formato oficial definido en este documento.
- Mantener el historial legible y ordenado de forma cronologica.

## Reglas Para Codex

Codex debe:

- Revisar `DECISIONS.md` antes de tomar decisiones grandes.
- Agregar una entrada si cambia arquitectura, tecnologias, backend, estado, diseno base o flujo de usuario.
- No reemplazar decisiones sin explicar motivo.
- No borrar historial.
- No inventar decisiones no aprobadas por el usuario.
- Mantener coherencia con `PROJECT_MANUAL.md`, `DESIGN_SYSTEM.md`, `COMPONENT_LIBRARY.md`, `ARCHITECTURE.md` y `REVIEW_CHECKLIST.md`.

## Conclusion

`DECISIONS.md` es la memoria tecnica del proyecto Kalu App. Su uso ayudara a mantener orden durante todo el desarrollo, recordar el motivo de las decisiones importantes y evitar cambios contradictorios a medida que la app crezca por sprints y versiones.
