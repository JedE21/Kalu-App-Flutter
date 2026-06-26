# PROJECT_MANUAL.md

## Portada Del Documento

- **Nombre:** PROJECT_MANUAL.md
- **Proyecto:** Kalú App Flutter
- **Marca:** Kalú Pastelería Casera
- **Plataforma inicial:** Android
- **Tecnología:** Flutter + Dart
- **Backend planificado:** Supabase
- **Autor/desarrollador:** JedE21

## Introducción

Kalú App es una aplicación móvil tipo tienda online para Kalú Pastelería Casera. Su propósito es mostrar productos, promociones, categorías, carrito y pedidos por WhatsApp desde una experiencia clara, moderna y fácil de usar.

La aplicación está pensada para iniciar con datos locales y mock durante las primeras fases, manteniendo una arquitectura preparada para integrarse con Supabase cuando la interfaz y los flujos principales estén definidos.

## Visión Del Proyecto

Kalú App debe sentirse moderna, dulce, femenina, limpia, comercial y profesional. La experiencia toma inspiración de tiendas digitales como AliExpress, Temu y Mercado Libre, pero adaptada al rubro de postres artesanales.

El diseño debe comunicar confianza, cuidado visual y deseo de compra. Cada pantalla debe ayudar al cliente a descubrir productos, revisar detalles y avanzar hacia un pedido sin fricción.

## Objetivo General

Crear una aplicación móvil funcional y escalable para que los clientes puedan explorar y comprar productos de Kalú de manera rápida y sencilla.

## Objetivos Específicos

- Mostrar productos por categorías.
- Mostrar promociones activas.
- Permitir agregar productos al carrito.
- Generar pedidos por WhatsApp.
- Preparar la app para una integración futura con Supabase.
- Mantener un diseño consistente con la identidad de Kalú.
- Usar componentes reutilizables para acelerar el desarrollo.
- Mantener la app organizada, compilable y fácil de extender.

## Público Objetivo

El público objetivo son clientes de Ica interesados en postres artesanales, tortas, cuchareables, pies, bocaditos, regalos dulces y pedidos para eventos.

La app debe ser fácil de usar para personas que desean comprar rápido, revisar opciones visuales y comunicarse con la pastelería sin depender de un proceso manual desordenado.

## Problema Que Resuelve

Muchos pedidos de pastelería se gestionan manualmente por redes sociales o WhatsApp. Esto puede generar desorden, pérdida de información, confusión sobre productos disponibles y dificultad para calcular cantidades o totales.

Kalú App organiza la experiencia de compra: el cliente explora el catálogo, revisa detalles, arma su carrito y prepara el pedido de forma estructurada antes de enviarlo.

## Propuesta De Valor

Kalú combina postres caseros con una experiencia digital moderna, visual y fácil de usar. La app permite presentar productos artesanales con una estética comercial, mejorando la forma en que los clientes descubren, eligen y solicitan sus pedidos.

La propuesta central es hacer que comprar postres en Kalú sea más ordenado, atractivo y rápido.

## Alcance De La Versión 1.0

La versión 1.0 debe incluir:

- Splash.
- Home.
- Categorías.
- Productos.
- Detalle de producto.
- Carrito local.
- Checkout por WhatsApp.
- Buscar.
- Favoritos locales.
- Promociones.
- Contacto.
- Perfil básico.

## Fuera De Alcance Para La Versión 1.0

La versión 1.0 no debe incluir:

- Login real.
- Pagos en línea.
- Supabase conectado.
- Notificaciones push.
- Panel administrativo móvil.
- Delivery con rastreo en tiempo real.

## Módulos Principales

### Módulo Inicio

Pantalla principal de entrada comercial. Debe mostrar saludo, buscador visual, banner promocional, categorías destacadas, productos más vendidos y promociones.

### Módulo Categorías

Permite navegar por las líneas de productos de Kalú, como cuchareables, tortas, pies, bocaditos y promociones.

### Módulo Productos

Muestra listados de productos, especialmente filtrados por categoría. Debe usar datos mock en las primeras fases y quedar preparado para datos reales más adelante.

### Módulo Detalle

Presenta información completa de cada producto: imagen o placeholder, nombre, categoría, precio, descripción, disponibilidad, cantidad y acciones principales.

### Módulo Carrito

Permite agregar productos, modificar cantidades, eliminar items, vaciar el carrito y revisar el total del pedido de forma local.

### Módulo Checkout WhatsApp

Debe preparar el resumen del pedido para enviarlo por WhatsApp. No debe conectarse a pagos ni Supabase en la primera versión.

### Módulo Favoritos

Debe permitir guardar productos favoritos de forma local para que el cliente pueda volver a revisarlos fácilmente.

### Módulo Búsqueda

Debe permitir encontrar productos por nombre, categoría o palabras clave relacionadas con postres.

### Módulo Perfil

Debe mostrar información básica del cliente o un espacio preparado para futuras opciones de usuario. El login real queda fuera de la versión 1.0.

### Módulo Promociones

Debe agrupar productos destacados, descuentos, campañas o combos temporales de Kalú.

### Módulo Contacto

Debe mostrar canales de comunicación, ubicación o datos útiles para que el cliente pueda contactar a Kalú.

## Experiencia De Usuario Esperada

El flujo esperado es simple:

1. El cliente abre la app.
2. Ve promociones y productos destacados.
3. Busca o selecciona una categoría.
4. Entra al detalle de un producto.
5. Ajusta cantidad y agrega al carrito.
6. Revisa el total del pedido.
7. Continúa al checkout.
8. Envía su pedido por WhatsApp.

La app debe evitar distracciones innecesarias y mantener acciones claras en cada paso.

## Principios De Diseño

- **Simpleza:** cada pantalla debe ser fácil de entender.
- **Claridad:** los textos, precios y botones deben ser visibles.
- **Consistencia:** usar los mismos estilos, colores y componentes.
- **Diseño visual atractivo:** la app debe comunicar dulzura y calidad.
- **Acciones claras:** comprar, agregar, buscar y continuar deben ser evidentes.
- **Pocas distracciones:** priorizar el flujo de compra.
- **Enfoque comercial:** destacar productos, promociones y precios.
- **Identidad Kalú:** mantener un estilo dulce, femenino, moderno y profesional.

## Principios Técnicos

- Código limpio.
- Widgets reutilizables.
- Archivos organizados.
- No duplicar lógica.
- Mantener la app compilable.
- Usar datos mock antes de Supabase.
- Separar UI, modelos y servicios.
- Mantener cambios pequeños y verificables.
- Evitar paquetes externos innecesarios.

## Roadmap Por Versiones

- **V1:** App local funcional con datos mock y pedido por WhatsApp.
- **V2:** Supabase para productos, categorías y promociones.
- **V3:** Login, clientes, historial y pedidos reales.
- **V4:** Notificaciones, cupones y mejoras avanzadas.
- **V5:** Optimización, analítica y posibles funciones con IA.

## Flujo General De Navegación

```text
Splash -> Home -> Categorías/Productos -> Detalle -> Carrito -> Checkout -> WhatsApp
```

## Reglas Para Codex

- Leer `AGENTS.md` antes de trabajar.
- Leer `PROJECT_MANUAL.md` para entender el producto.
- No hacer toda la app de golpe.
- Trabajar por módulo.
- No conectar Supabase antes de la fase correspondiente.
- No modificar archivos que no sean necesarios.
- Actualizar `TODO.md` cuando corresponda.
- Mantener `flutter analyze` sin errores críticos.
- Respetar las restricciones explícitas del usuario en cada tarea.

## Criterios De Calidad

- La app compila.
- La UI respeta Kalú.
- No hay pantallas rotas.
- Los componentes son reutilizables.
- El código es entendible.
- La navegación funciona.
- El diseño es responsive para Android.
- Los cambios se pueden validar con comandos reales.

## Convenciones Generales

- Nombres de archivos en `snake_case`.
- Clases en `PascalCase`.
- Variables en `camelCase`.
- Mantener widgets pequeños.
- Evitar archivos demasiado largos.
- Separar widgets reutilizables.
- Mantener modelos y servicios fuera de la UI cuando corresponda.
- Evitar lógica duplicada entre pantallas.

## Conclusión

Este documento sirve como guía central para desarrollar Kalú App de forma ordenada, escalable y profesional. Cualquier desarrollador o agente IA que continúe el proyecto debe usarlo como referencia para entender el producto, respetar el alcance, mantener la identidad de Kalú y avanzar por módulos pequeños sin romper la app.
