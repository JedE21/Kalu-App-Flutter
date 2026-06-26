# COMPONENT_LIBRARY.md

## Portada

- **Documento:** COMPONENT_LIBRARY.md
- **Proyecto:** Kalú App Flutter
- **Marca:** Kalú Pastelería Casera
- **Plataforma inicial:** Android
- **Relación con DESIGN_SYSTEM.md:** este documento aterriza las reglas visuales de `DESIGN_SYSTEM.md` en componentes reutilizables concretos para la app.

## Propósito Del Documento

Este documento define la biblioteca oficial de componentes reutilizables de Kalú App Flutter. Su objetivo es evitar duplicar código, mantener consistencia visual y facilitar que cada pantalla use las mismas piezas base.

La biblioteca debe crecer de forma controlada. Si un elemento visual se repite en varias pantallas, debe convertirse en componente reutilizable y documentarse aquí.

## Regla Principal

Antes de crear una pantalla nueva, Codex debe revisar si ya existe un componente reutilizable que pueda usar. Si el componente existe, debe reutilizarse. Si no existe y el elemento se repetirá, debe proponerse como componente nuevo y luego documentarse en este archivo.

## Componentes Base

Componentes actuales o esperados dentro de la app:

- `AppButton`
- `AppCard`
- `AppTextField`
- `AppSearchBar`
- `AppBanner`
- `ProductCard`
- `CategoryChip`
- `PriceWidget`
- `QuantitySelector`
- `SectionTitle`
- `AppLoading`
- `AppEmpty`
- `AppError`
- `BottomNavBar`
- `AppScaffold`

## AppButton

### Nombre Del Componente

`AppButton`

### Propósito

Centralizar los estilos de botones de la app para que las acciones principales, secundarias y especiales mantengan una apariencia consistente.

### Dónde Se Usa

- Detalle de producto.
- Carrito.
- Checkout.
- Estados vacíos.
- Formularios.
- Promociones.

### Elementos Visuales

- Texto claro.
- Icono opcional.
- Fondo según variante.
- Bordes redondeados.
- Padding táctil cómodo.

### Propiedades Esperadas

- `label`
- `onPressed`
- `icon`
- `variant`
- `isLoading`
- `expand`

### Reglas De Diseño

- Usar rosado principal para la acción principal.
- Usar verde para WhatsApp.
- Mantener bordes redondeados.
- Mantener buen tamaño táctil.
- No usar botones con estilos improvisados.
- El texto debe ser corto y orientado a acción.

### Variantes

- **Primary:** acción principal, fondo rosado principal.
- **Secondary:** acción secundaria, fondo rosado suave.
- **Outline:** acción alternativa, borde rosado y fondo claro.
- **WhatsApp:** acción de pedido por WhatsApp, fondo verde.
- **SmallAddButton:** botón compacto para agregar productos en tarjetas.

### Ejemplo Conceptual

Usar `AppButton` como botón principal para "Agregar al carrito" y como botón outline para "Pedir por WhatsApp".

## AppCard

### Nombre Del Componente

`AppCard`

### Propósito

Crear una superficie visual reutilizable para agrupar contenido con fondo blanco, bordes redondeados, sombra suave y padding consistente.

### Dónde Se Usa

- Tarjetas de producto.
- Tarjetas de carrito.
- Tarjetas de perfil.
- Tarjetas de promoción.
- Bloques de detalle.

### Elementos Visuales

- Fondo blanco.
- Radio amplio.
- Sombra suave.
- Padding interno.
- Soporte para acción al tocar.

### Propiedades Esperadas

- `child`
- `padding`
- `onTap`
- `backgroundColor`

### Reglas De Diseño

- Fondo blanco.
- Borde redondeado.
- Sombra suave.
- Padding interno consistente.
- No saturar la tarjeta con demasiado texto.

### Variantes

- Tarjeta simple.
- Tarjeta tocable.
- Tarjeta de resumen.

### Ejemplo Conceptual

Usar `AppCard` para envolver el resumen del carrito o una sección informativa dentro del detalle de producto.

## AppTextField

### Nombre Del Componente

`AppTextField`

### Propósito

Estandarizar campos de texto para formularios, checkout, perfil y búsqueda avanzada.

### Dónde Se Usa

- Formularios.
- Checkout.
- Perfil.
- Búsqueda avanzada.
- Contacto.

### Elementos Visuales

- Fondo claro.
- Placeholder.
- Label opcional.
- Icono inicial opcional.
- Icono final opcional.
- Bordes suaves.

### Propiedades Esperadas

- `controller`
- `label`
- `hintText`
- `prefixIcon`
- `suffixIcon`
- `keyboardType`
- `textInputAction`
- `obscureText`
- `maxLines`
- `onChanged`
- `validator`

### Reglas De Diseño

- Bordes suaves.
- Placeholder claro.
- Estado error visible.
- Estado deshabilitado con baja opacidad.
- Mantener altura cómoda para Android.

### Variantes

- Campo de texto simple.
- Campo multilínea.
- Campo con icono.
- Campo de contraseña si se implementa login futuro.

### Ejemplo Conceptual

Usar `AppTextField` para el nombre del cliente en checkout o para datos básicos de perfil.

## AppSearchBar

### Nombre Del Componente

`AppSearchBar`

### Propósito

Permitir búsqueda visual y rápida dentro de productos, categorías o pantallas comerciales.

### Dónde Se Usa

- Home.
- Pantalla Buscar.
- Productos.

### Elementos Visuales

- Icono de búsqueda.
- Placeholder amigable.
- Fondo claro.
- Radio grande.
- Altura táctil cómoda.

### Propiedades Esperadas

- `controller`
- `hintText`
- `onChanged`
- `onTap`
- `readOnly`

### Reglas De Diseño

- Debe verse como componente principal en Home.
- El placeholder debe ser cercano y comercial.
- Mantener bordes redondeados.
- Usar icono `search`.

### Variantes

- Buscador visual de solo lectura.
- Buscador editable.
- Buscador con navegación a pantalla dedicada.

### Ejemplo Conceptual

Usar `AppSearchBar` con el texto "Buscar tortas, cuchareables, pies..." en Home.

## AppBanner

### Nombre Del Componente

`AppBanner`

### Propósito

Mostrar mensajes destacados, promociones, novedades o avisos importantes con jerarquía visual clara.

### Dónde Se Usa

- Promoción del día.
- Ofertas.
- Novedades.
- Avisos importantes.
- Home.

### Elementos Visuales

- Título.
- Subtítulo.
- Botón opcional.
- Imagen o icono opcional.
- Fondo destacado.

### Propiedades Esperadas

- `title`
- `subtitle`
- `buttonText`
- `onPressed`
- `icon`

### Reglas De Diseño

- Título corto.
- Subtítulo claro.
- Botón opcional con acción evidente.
- Icono o imagen decorativa sin distraer.
- Mantener estilo dulce y comercial.

### Variantes

- Banner principal.
- Banner promocional.
- Banner informativo.

### Ejemplo Conceptual

Usar `AppBanner` para "Promoción del día" con subtítulo "Cuchareables desde S/ 7.00".

## ProductCard

### Nombre Del Componente

`ProductCard`

### Propósito

Mostrar productos en listados comerciales de forma compacta, visual y accionable.

### Dónde Se Usa

- Home.
- Productos por categoría.
- Favoritos.
- Promociones.

### Elementos Visuales

- Imagen o placeholder.
- Nombre.
- Categoría.
- Precio.
- Botón agregar.
- Estado disponible si aplica.

### Propiedades Esperadas

- `name`
- `price`
- `category`
- `oldPrice`
- `image`
- `icon`
- `onTap`
- `onAddTap`
- `isAvailable`

### Reglas De Diseño

- Priorizar imagen, nombre y precio.
- Mantener el nombre en máximo dos líneas.
- Mostrar precio destacado.
- El botón agregar debe ser pequeño y claro.
- Evitar descripciones largas dentro de la tarjeta.

### Variantes

- Producto normal.
- Producto en promoción.
- Producto no disponible.

### Ejemplo Conceptual

Usar `ProductCard` en "Más vendidos" y en listados filtrados por categoría.

## CategoryChip

### Nombre Del Componente

`CategoryChip`

### Propósito

Permitir navegación rápida o filtrado por categorías de productos.

### Dónde Se Usa

- Home.
- Categorías.
- Filtros de productos.

### Elementos Visuales

- Texto corto.
- Icono opcional.
- Estado activo/inactivo.
- Forma redondeada.

### Propiedades Esperadas

- `label`
- `icon`
- `selected`
- `onTap`

### Reglas De Diseño

- Redondeado.
- Texto corto.
- Icono opcional.
- Estado activo en rosado principal.
- Estado inactivo con fondo claro y borde suave.

### Variantes

- Chip activo.
- Chip inactivo.
- Chip con icono.
- Chip solo texto.

### Ejemplo Conceptual

Usar `CategoryChip` para mostrar "Cuchareables", "Tortas 1/4 kg", "Pies" y otras categorías.

## PriceWidget

### Nombre Del Componente

`PriceWidget`

### Propósito

Mostrar precios de forma uniforme y destacada en toda la app.

### Dónde Se Usa

- `ProductCard`.
- Detalle.
- Carrito.
- Checkout.

### Elementos Visuales

- Precio actual.
- Precio anterior opcional.
- Estilo destacado.
- Moneda peruana.

### Propiedades Esperadas

- `price`
- `oldPrice`
- `textAlign`

### Reglas De Diseño

- Mostrar moneda peruana: `S/`.
- Precio destacado.
- Mantener formato uniforme.
- Si existe precio anterior, mostrarlo con estilo tachado.

### Variantes

- Precio normal.
- Precio con descuento.
- Precio alineado al centro o final.

### Ejemplo Conceptual

Usar `PriceWidget` para mostrar `S/ 7.00` en un producto promocional.

## QuantitySelector

### Nombre Del Componente

`QuantitySelector`

### Propósito

Permitir modificar cantidades de producto sin escribir manualmente el número.

### Dónde Se Usa

- Detalle de producto.
- Carrito.

### Elementos Visuales

- Botón menos.
- Cantidad.
- Botón más.
- Contenedor redondeado.

### Propiedades Esperadas

- `value`
- `onChanged`
- `min`
- `max`

### Reglas De Diseño

- Evitar cantidades menores a 1.
- Mantener botones táctiles cómodos.
- Usar iconos `add` y `remove`.
- La cantidad debe estar centrada.

### Variantes

- Selector normal.
- Selector compacto para carrito.

### Ejemplo Conceptual

Usar `QuantitySelector` para pasar de 1 a 2 unidades antes de agregar un producto al carrito.

## SectionTitle

### Nombre Del Componente

`SectionTitle`

### Propósito

Estandarizar títulos de secciones dentro de pantallas comerciales.

### Dónde Se Usa

- Home.
- Productos.
- Perfil.
- Promociones.
- Carrito.

### Elementos Visuales

- Título.
- Acción opcional "Ver todo".

### Propiedades Esperadas

- `title`
- `actionText`
- `onActionTap`

### Reglas De Diseño

- Título corto.
- Usar jerarquía visual clara.
- La acción opcional debe ser breve.
- No usar más de una acción por título.

### Variantes

- Título simple.
- Título con acción.

### Ejemplo Conceptual

Usar `SectionTitle` para "Más vendidos", "Promociones" o "Categorías".

## AppLoading

### Nombre Del Componente

`AppLoading`

### Propósito

Mostrar estado de carga de forma consistente.

### Dónde Se Usa

- Carga de productos.
- Carga de pedidos.
- Carga de perfil.

### Elementos Visuales

- Indicador de progreso.
- Mensaje opcional.

### Propiedades Esperadas

- `message`

### Reglas De Diseño

- Debe ser simple.
- No debe ocupar más jerarquía de la necesaria.
- Si la carga es larga, mostrar mensaje.

### Variantes

- Loading sin texto.
- Loading con mensaje.

### Ejemplo Conceptual

Usar `AppLoading` mientras se cargan productos desde Supabase en una fase futura.

## AppEmpty

### Nombre Del Componente

`AppEmpty`

### Propósito

Mostrar estados vacíos de forma amable y útil.

### Dónde Se Usa

- Carrito vacío.
- Favoritos vacíos.
- Sin resultados de búsqueda.
- Categorías sin productos.

### Elementos Visuales

- Icono.
- Título.
- Mensaje.
- Acción opcional.

### Propiedades Esperadas

- `title`
- `message`
- `actionText`
- `onActionTap`
- `icon`

### Reglas De Diseño

- El mensaje debe explicar qué ocurre.
- Si aplica, ofrecer una acción.
- Mantener tono cercano.

### Variantes

- Empty simple.
- Empty con acción.

### Ejemplo Conceptual

Usar `AppEmpty` cuando el carrito no tiene productos.

## AppError

### Nombre Del Componente

`AppError`

### Propósito

Mostrar errores de forma clara y recuperable.

### Dónde Se Usa

- Error de conexión.
- Error al cargar productos.
- Error al enviar pedido.

### Elementos Visuales

- Icono de error.
- Título.
- Mensaje.
- Botón de reintento opcional.

### Propiedades Esperadas

- `title`
- `message`
- `actionText`
- `onRetry`

### Reglas De Diseño

- Mensaje claro y breve.
- Usar rojo con moderación.
- Ofrecer reintento cuando tenga sentido.

### Variantes

- Error simple.
- Error con acción de reintento.

### Ejemplo Conceptual

Usar `AppError` si no se pueden cargar productos desde Supabase en una fase futura.

## BottomNavBar

### Nombre Del Componente

`BottomNavBar`

### Propósito

Centralizar la navegación inferior principal de la app.

### Dónde Se Usa

- Estructura principal de la aplicación.

### Pestañas

- Inicio.
- Categorías.
- Carrito.
- Pedidos.
- Perfil.

### Elementos Visuales

- Iconos.
- Labels.
- Estado activo.
- Estado inactivo.

### Propiedades Esperadas

- `currentIndex`
- `items`
- `onTap`

### Reglas De Diseño

- Icono activo en rosado principal.
- Mantener nombres cortos.
- No agregar demasiadas pestañas.
- Iconos inactivos en gris o marrón suave.
- Mantener buen tamaño táctil.

### Variantes

- Navegación principal de cinco pestañas.

### Ejemplo Conceptual

Usar `BottomNavBar` para cambiar entre Inicio, Categorías, Carrito, Pedidos y Perfil.

## AppScaffold

### Nombre Del Componente

`AppScaffold`

### Propósito

Usarse como estructura base de pantallas para mantener consistencia de fondo, padding, AppBar y contenedores principales.

### Dónde Se Usa

- Pantallas internas.
- Listados.
- Detalles.
- Carrito.
- Formularios.

### Elementos Visuales

- AppBar opcional.
- Body.
- Bottom Navigation opcional.
- Padding estándar.
- Background consistente.

### Propiedades Esperadas

- `body`
- `title`
- `actions`
- `bottomNavigationBar`
- `floatingActionButton`
- `padding`
- `safeArea`

### Reglas De Diseño

- Mantener fondo consistente.
- Aplicar padding estándar.
- Evitar duplicar `Scaffold` con estilos improvisados.
- Permitir pantallas con o sin AppBar.

### Variantes

- Pantalla con título.
- Pantalla sin AppBar.
- Pantalla con navegación inferior.
- Pantalla con acción flotante.

### Ejemplo Conceptual

Usar `AppScaffold` como base para la pantalla de productos por categoría.

## Componentes Futuros

Componentes planeados:

- `FavoriteButton`: botón para marcar productos favoritos.
- `PromotionBadge`: etiqueta para descuentos o campañas.
- `OrderStatusChip`: chip para estados de pedido.
- `CheckoutSummaryCard`: resumen visual del pedido en checkout.
- `WhatsAppOrderButton`: botón especializado para enviar pedido por WhatsApp.
- `ProductImageGallery`: galería para fotos reales de productos.
- `ProfileMenuItem`: item reutilizable para opciones del perfil.

Estos componentes deben documentarse aquí cuando se creen.

## Reglas Para Codex

- No crear un widget nuevo si ya existe uno equivalente.
- Si una pantalla necesita un elemento repetido, convertirlo en componente reutilizable.
- Evitar widgets gigantes dentro de una sola pantalla.
- Si se crea un componente nuevo, agregarlo a este documento.
- Respetar `DESIGN_SYSTEM.md`.
- Mantener nombres en inglés para clases y archivos técnicos.
- Mantener los textos visibles en español cuando sean parte de la UI.
- No inventar componentes fuera del roadmap sin necesidad.

## Criterios De Calidad

- Componentes reutilizables.
- Código limpio.
- Props claras.
- Estilo consistente.
- Responsive para Android.
- Sin duplicación visual innecesaria.
- Fácil de probar.
- Fácil de extender.

## Cierre

`COMPONENT_LIBRARY.md` debe ser la referencia principal para decidir qué componente usar antes de construir una nueva pantalla. Su uso correcto permite que Kalú App crezca de forma ordenada, consistente y alineada con el sistema visual definido en `DESIGN_SYSTEM.md`.
