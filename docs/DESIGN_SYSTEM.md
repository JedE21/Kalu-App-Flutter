# DESIGN_SYSTEM.md

## Portada

- **Documento:** DESIGN_SYSTEM.md
- **Proyecto:** Kalú App Flutter
- **Marca:** Kalú Pastelería Casera
- **Plataforma inicial:** Android
- **Enfoque visual:** dulce, moderno, femenino, limpio, comercial y premium.

## Propósito Del Sistema De Diseño

Este documento define cómo debe verse Kalú App Flutter en todas sus pantallas y componentes. Su objetivo es mantener consistencia visual, facilitar el trabajo por módulos y evitar que cada nueva pantalla cree estilos aislados.

El sistema de diseño debe guiar colores, tipografía, espaciados, tarjetas, botones, estados, navegación e iconografía. Cualquier pantalla nueva debe partir de estas reglas antes de proponer estilos adicionales.

## Personalidad Visual De Kalú

Kalú App debe sentirse:

- Dulce.
- Cercana.
- Artesanal.
- Moderna.
- Elegante.
- Femenina.
- Comercial.
- Confiable.

La identidad debe transmitir una pastelería casera cuidada, con una experiencia digital clara y profesional. La app no debe sentirse genérica ni excesivamente corporativa; debe conservar calidez, suavidad y deseo de compra.

## Inspiración Visual

La app se inspira en tiendas online como AliExpress, Temu, Mercado Libre, Falabella y apps de delivery, especialmente en su claridad comercial, navegación rápida, jerarquía visual y facilidad para comprar.

Esta inspiración no implica copiar estilos directamente. Kalú debe adaptar esas referencias al rubro de postres artesanales, usando una estética más dulce, limpia y cálida.

## Paleta De Colores

La paleta debe mantener una base suave y comercial, con rosado como color principal, crema como fondo y marrones para textos.

| Uso | Nombre visual | Nombre sugerido Flutter |
| --- | --- | --- |
| Acción principal | Rosado principal | `AppColors.primary` |
| Fondos suaves o elementos activos | Rosado suave | `AppColors.primaryLight` |
| Fondo general | Crema claro | `AppColors.background` |
| Tarjetas y superficies | Blanco | `AppColors.surface` |
| Texto principal | Marrón texto | `AppColors.textPrimary` |
| Texto secundario | Gris/marrón suave | `AppColors.textSecondary` |
| Promociones y detalles premium | Dorado/acento | `AppColors.accent` |
| Estados correctos | Verde éxito | `AppColors.success` |
| Errores y acciones destructivas | Rojo error | `AppColors.error` |
| Bordes y divisores | Gris borde | `AppColors.border` |

Colores principales de Kalú:

- Rosado principal.
- Rosado suave.
- Crema claro.
- Blanco.
- Marrón suave.
- Marrón texto.
- Dorado/acento.
- Verde éxito.
- Rojo error.
- Gris texto secundario.
- Gris borde.

## Uso De Colores

- El rosado principal debe usarse en botones principales, iconos activos, llamadas a la acción y elementos destacados.
- El crema claro debe usarse como fondo general para mantener una sensación cálida y suave.
- El blanco debe reservarse para tarjetas, inputs, superficies y contenedores de información.
- El marrón debe usarse en títulos y textos principales para mantener identidad artesanal.
- El gris/marrón suave debe usarse en textos secundarios, descripciones y estados inactivos.
- El dorado/acento debe usarse con moderación en promociones, badges o elementos premium.
- El verde debe representar éxito, disponibilidad o confirmaciones.
- El rojo debe representar errores, alertas o acciones destructivas como eliminar.

## Tipografía

La tipografía debe ser clara, limpia y legible. No se deben usar demasiadas fuentes. La jerarquía debe ayudar al cliente a entender rápido qué está viendo y qué acción puede tomar.

Jerarquía recomendada:

- **Display / Marca:** uso puntual para marca, splash o momentos de identidad.
- **H1:** títulos principales de pantalla.
- **H2:** títulos de secciones importantes.
- **H3:** subtítulos, nombres de bloques o agrupaciones.
- **Body:** texto normal, descripciones y contenido general.
- **Caption:** detalles secundarios, categorías, notas y ayudas.
- **Button:** texto de acciones, siempre claro y breve.
- **Price:** precios destacados, con peso visual mayor que el texto normal.

Reglas:

- Los títulos deben ser grandes y claros.
- El texto de producto debe ser legible incluso en tarjetas pequeñas.
- Los precios deben destacar en rosado principal o en un estilo de alto contraste.
- No usar demasiadas fuentes ni estilos decorativos.
- Mantener un estilo limpio, comercial y fácil de escanear.

## Espaciado

La app debe usar una escala consistente para que las pantallas se sientan ordenadas.

Escala base:

- 4 px.
- 8 px.
- 12 px.
- 16 px.
- 20 px.
- 24 px.
- 32 px.

Uso recomendado:

- **Padding de pantalla:** 16 px o 24 px según densidad.
- **Separación entre tarjetas:** 12 px o 16 px.
- **Margen de secciones:** 24 px o 32 px.
- **Espacio entre título y contenido:** 8 px o 12 px.
- **Espacio interno de tarjetas:** 12 px o 16 px.

## Bordes Y Radios

Los bordes redondeados son parte de la identidad visual de Kalú. Deben comunicar suavidad y cuidado sin exagerar.

- **Radius small:** 8 px.
- **Radius medium:** 12 px.
- **Radius large:** 16 px.
- **Radius extra large:** 24 px.
- **Radius circular:** para chips, badges y controles tipo píldora.

Uso recomendado:

- Inputs: 16 px.
- Tarjetas: 16 px.
- Banners: 24 px.
- Botones: 12 px o 14 px.
- Chips: circular/píldora.

## Sombras

Las sombras deben ser suaves, no pesadas. Deben ayudar a separar superficies sin ensuciar la interfaz.

Usar sombras en:

- `ProductCard`.
- `AppCard`.
- Banner.
- BottomNavigation.
- Botones flotantes si existen.

Reglas:

- Evitar sombras oscuras o duras.
- Preferir blur amplio y baja opacidad.
- No usar sombra en todos los elementos; reservarla para jerarquía visual.

## Botones

Los botones deben comunicar acción clara. El texto debe ser breve y directo.

### Botón Principal

- **Color:** rosado principal.
- **Texto:** blanco.
- **Radio:** medium.
- **Padding:** 16 px vertical y 20-24 px horizontal.
- **Estado normal:** fondo rosado sólido.
- **Estado presionado:** rosado ligeramente más oscuro o feedback táctil.
- **Estado deshabilitado:** gris claro o baja opacidad.

### Botón Secundario

- **Color:** rosado suave.
- **Texto:** rosado principal o marrón texto.
- **Radio:** medium.
- **Padding:** igual al botón principal.
- **Estado normal:** fondo suave.
- **Estado presionado:** fondo rosado suave más marcado.
- **Estado deshabilitado:** baja opacidad.

### Botón Outline

- **Color:** borde rosado principal.
- **Texto:** rosado principal.
- **Radio:** medium.
- **Padding:** igual al botón principal.
- **Estado normal:** fondo transparente o blanco.
- **Estado presionado:** fondo rosado suave.
- **Estado deshabilitado:** borde y texto en gris.

### Botón De WhatsApp

- **Color:** verde asociado a acción exitosa o comunicación.
- **Texto:** blanco.
- **Radio:** medium.
- **Padding:** cómodo para uso táctil.
- **Estado normal:** verde sólido.
- **Estado presionado:** verde más oscuro.
- **Estado deshabilitado:** baja opacidad.

### Botón Pequeño De Agregar

- **Color:** rosado principal.
- **Texto/Icono:** blanco.
- **Radio:** circular o medium.
- **Padding:** compacto pero táctil.
- **Estado normal:** icono `add`.
- **Estado presionado:** feedback táctil visible.
- **Estado deshabilitado:** gris o baja opacidad.

## Tarjetas

Las tarjetas deben organizar información comercial sin saturar.

Tipos:

- `ProductCard`.
- `CategoryCard`.
- `PromotionCard`.
- `CartItemCard`.
- `ProfileCard`.

Reglas:

- Deben ser limpias.
- Deben tener bordes redondeados.
- Deben usar sombra suave si necesitan jerarquía.
- Deben tener buen espacio interno.
- Deben evitar exceso de texto.
- Deben priorizar imagen, nombre, precio y acción.

## Chips Y Categorías

Los chips deben ayudar a filtrar o navegar categorías sin ocupar demasiado espacio.

Tipos:

- `CategoryChip`.
- `FilterChip`.
- `PromotionChip`.

Reglas:

- Deben ser redondeados.
- Deben ser claros y fáciles de tocar.
- El chip activo debe usar rosado principal.
- El chip inactivo puede usar blanco, borde suave y texto marrón.
- El texto debe ser corto.

## Banners

Los banners deben comunicar promociones, campañas o mensajes importantes.

Tipos:

- Banner principal.
- Banner promocional.
- Banner de ofertas.
- Banner informativo.

Deben incluir:

- Título corto.
- Texto secundario.
- Botón.
- Imagen o icono decorativo.

Reglas:

- El texto debe ser breve.
- El botón debe tener una acción clara.
- El banner no debe saturar la pantalla.
- El color debe reforzar la identidad de Kalú.

## Buscador

`AppSearchBar` debe verse como un componente principal en Home y en pantallas de búsqueda.

Reglas:

- Fondo claro.
- Icono de búsqueda.
- Placeholder amigable.
- Bordes redondeados.
- Buen tamaño táctil.
- Texto secundario claro.

Ejemplo de placeholder:

```text
Buscar tortas, cuchareables, pies...
```

## Bottom Navigation

La navegación inferior debe permitir moverse entre las secciones principales:

- Inicio.
- Categorías.
- Carrito.
- Pedidos.
- Perfil.

Reglas:

- Icono activo en rosado principal.
- Texto activo visible.
- Iconos inactivos en gris o marrón suave.
- Barra limpia y con buen tamaño táctil.
- Evitar más de cinco destinos principales.
- Mantener etiquetas cortas.

## Iconografía

Usar iconos Material cuando sea posible para mantener consistencia.

Iconos sugeridos:

- `home`.
- `category`.
- `shopping_cart`.
- `receipt_long`.
- `person`.
- `favorite`.
- `search`.
- `local_offer`.
- `cake`.
- `chat` o icono asociado a WhatsApp si está disponible.

Reglas:

- No mezclar estilos de iconos innecesariamente.
- Usar iconos outline para estados inactivos.
- Usar iconos sólidos o destacados para estados activos si aplica.
- Mantener tamaños consistentes.

## Imágenes

Las imágenes son importantes para vender postres. Deben ser limpias, claras y apetitosas.

Reglas:

- Usar imágenes limpias de productos.
- Preferir fondo claro.
- Mantener proporciones.
- Evitar imágenes pixeladas.
- Usar placeholders mientras no haya fotos reales.
- Evitar recortes que oculten el producto.
- Mantener consistencia entre imágenes de tarjetas y detalle.

## Estados De Interfaz

La app debe contemplar estados claros para evitar pantallas confusas.

### Loading

- Usar indicador simple.
- Incluir mensaje si la espera puede tomar tiempo.
- Evitar bloquear visualmente toda la app si no es necesario.

### Empty

- Mostrar icono amable.
- Explicar qué falta.
- Ofrecer una acción cuando corresponda.

### Error

- Mensaje claro.
- Acción para reintentar si aplica.
- Usar rojo con moderación.

### Success

- Confirmar acciones como agregado al carrito.
- Usar verde o feedback visual positivo.

### Disabled

- Reducir opacidad.
- Mantener texto legible.
- Evitar que parezca un error.

## Animaciones

Las animaciones deben ser suaves y discretas.

Animaciones permitidas:

- Fade in.
- Slide corto.
- Scale ligero al presionar.
- Transiciones simples entre pantallas.

Reglas:

- No abusar de animaciones.
- Priorizar rendimiento en Android.
- Evitar animaciones que retrasen la compra.
- Mantener tiempos cortos.

## Accesibilidad

La app debe ser cómoda para la mayor cantidad posible de usuarios.

Reglas:

- Buen contraste entre texto y fondo.
- Tamaños táctiles cómodos.
- Texto legible.
- No depender solo del color para comunicar estados.
- Mantener labels claros en botones e iconos importantes.
- Evitar textos demasiado pequeños en precios o acciones.

## Reglas Para Codex

- Usar este documento antes de crear cualquier pantalla.
- No inventar estilos nuevos sin necesidad.
- Reutilizar colores, radios, espaciados y componentes.
- Mantener consistencia visual.
- Si crea un nuevo componente, documentarlo luego en `COMPONENT_LIBRARY.md`.
- No modificar este sistema de diseño sin una razón clara.
- Priorizar componentes reutilizables sobre estilos aislados.

## Ejemplo De Identidad Visual En Texto

Kalú debe sentirse como una pastelería moderna en formato app: cálida, dulce, limpia, elegante y fácil de comprar.
