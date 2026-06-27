# UI_FLOW.md

## Portada

- **Documento:** UI_FLOW.md
- **Proyecto:** Kalu App Flutter
- **Uso:** flujo de navegacion y pantallas
- **Plataforma inicial:** Android
- **Estado:** guia oficial de navegacion

## Proposito Del Documento

`UI_FLOW.md` define el recorrido principal del usuario dentro de Kalu App Flutter. Explica que pantallas existen, como se conectan, que accion principal tiene cada una y como debe mantenerse ordenada la navegacion a medida que la app crece.

Este documento sirve para que Codex mantenga coherencia al crear nuevas pantallas, rutas, accesos y acciones. Cualquier cambio importante en el flujo de usuario debe reflejarse aqui.

## Principio Principal Del Flujo

La app debe permitir que el cliente encuentre un producto, revise su detalle, lo agregue al carrito y envie su pedido por WhatsApp con la menor cantidad de pasos posible.

El flujo debe sentirse simple, comercial y directo: descubrir, elegir, revisar, agregar y pedir.

## Flujo General De La V1

```text
Splash
   |
   v
Onboarding
   |
   v
Home
   |
   v
Categorias / Buscar / Promociones
   |
   v
Lista de productos
   |
   v
Detalle de producto
   |
   v
Carrito
   |
   v
Checkout
   |
   v
WhatsApp
```

## Navegacion Principal Con Bottom Navigation

La navegacion principal usa Bottom Navigation para las secciones base de la aplicacion:

- **Inicio:** entrada comercial de la app. Muestra saludo, buscador, banner, categorias, mas vendidos y promociones.
- **Categorias:** permite explorar las lineas de productos de Kalu y abrir listados filtrados.
- **Carrito:** muestra productos agregados, cantidades, subtotales, total y acceso al checkout.
- **Pedidos:** muestra informacion de pedidos. En V1 puede ser informativa o local; en versiones futuras se conectara a Supabase.
- **Perfil:** agrupa datos basicos, contacto, redes, configuracion y futuras opciones de cuenta.

Bottom Navigation debe mantenerse en las pantallas principales. Las pantallas secundarias pueden abrirse sobre esta navegacion si el flujo lo requiere.

## Pantalla Splash

### Proposito

Mostrar la primera entrada visual de Kalu App y preparar el paso hacia la experiencia principal.

### Elementos Visuales

- Logo o nombre de Kalu.
- Fondo alineado con la identidad visual.
- Indicador breve de carga si aplica.

### Accion Automatica

Validar el estado inicial necesario y avanzar automaticamente.

### Siguiente Pantalla

Onboarding o Home, segun el flujo inicial definido para la V1.

## Pantalla Onboarding

### Proposito

Presentar Kalu App al usuario con una experiencia inicial breve, dulce y clara.

### Elementos Visuales

- Tres pantallas informativas.
- Iconos o placeholders simples.
- Indicadores de pagina.
- Botones Siguiente, Omitir y Comenzar.

### Acciones

- Avanzar entre pantallas.
- Omitir onboarding.
- Comenzar y entrar al Home.

### Siguiente Pantalla

Home.

## Pantalla Home

### Proposito

Ser la pantalla principal de descubrimiento comercial, donde el cliente ve productos, promociones y accesos rapidos para comprar.

### Elementos Principales

- Saludo.
- Buscador.
- Banner.
- Categorias horizontales.
- Mas vendidos.
- Promociones.

### Acciones Principales

- Buscar producto.
- Abrir categoria.
- Abrir detalle de producto.
- Ver promociones.

## Pantalla Categorias

### Proposito

Mostrar las categorias iniciales de Kalu para que el cliente encuentre productos por tipo.

### Categorias Iniciales

- Cuchareables.
- Tortas 1/4 kg.
- Tortas 1 kg.
- Pies.
- Bocaditos.
- Promociones.

### Accion Principal

Seleccionar una categoria y ver sus productos.

## Pantalla Productos Por Categoria

### Proposito

Mostrar productos filtrados segun la categoria seleccionada.

### Elementos

- Titulo de categoria.
- Lista o grid de productos.
- Filtros simples si aplica.
- Estado vacio si no hay productos.

### Accion Principal

Abrir detalle del producto.

## Pantalla Detalle De Producto

### Proposito

Mostrar la informacion completa de un producto para que el cliente decida si lo agrega al carrito o lo pide directamente.

### Elementos

- Imagen o placeholder.
- Nombre.
- Categoria.
- Descripcion.
- Precio.
- Cantidad.
- Boton agregar al carrito.
- Boton pedir por WhatsApp.

### Acciones

- Agregar al carrito.
- Ir al carrito.
- Pedir directamente.

## Pantalla Carrito

### Proposito

Permitir revisar y ajustar los productos agregados antes de continuar con el pedido.

### Elementos

- Lista de productos.
- Cantidades.
- Subtotal por producto.
- Total general.
- Boton continuar pedido.

### Acciones

- Aumentar cantidad.
- Disminuir cantidad.
- Eliminar producto.
- Continuar al checkout.

## Pantalla Checkout

### Proposito

Recopilar datos finales del cliente y preparar el mensaje de pedido para WhatsApp.

### Elementos

- Datos del cliente.
- Direccion o referencia.
- Observaciones.
- Resumen del pedido.
- Boton enviar por WhatsApp.

### Accion Principal

Generar mensaje de pedido y abrir WhatsApp.

## Pantalla Pedidos

### En V1

- Mostrar estado informativo.
- Mostrar historial local simple si aplica.
- Explicar que los pedidos reales se habilitaran en una version posterior.

### En V2/V3

- Mostrar pedidos reales desde Supabase.
- Mostrar estado de pedido.
- Mostrar detalle e historial del cliente cuando exista autenticacion.

## Pantalla Perfil

### En V1

- Datos basicos o accesos rapidos.
- Contacto.
- Redes sociales.
- Configuracion.

### En V3

- Login.
- Historial.
- Datos sincronizados.

## Pantalla Buscar

### Proposito

Permitir encontrar productos por nombre, categoria o palabras clave relacionadas con postres.

### Elementos

- Buscador.
- Resultados.
- Estado vacio.
- Accion hacia detalle.

### Accion Principal

Abrir el detalle del producto encontrado.

## Pantalla Favoritos

### Proposito

Permitir que el cliente guarde productos locales para revisarlos despues.

### Elementos

- Lista de productos favoritos locales.
- Accion para quitar favorito.
- Accion para abrir detalle.

### Accion Principal

Abrir detalle del producto favorito.

## Pantalla Promociones

### Proposito

Agrupar promociones, productos en oferta y campanas comerciales de Kalu.

### Elementos

- Lista de promociones.
- Productos en oferta.
- Accion hacia detalle o categoria.

### Accion Principal

Abrir detalle de producto o categoria promocional.

## Pantalla Contacto

### Proposito

Mostrar canales para que el cliente se comunique con Kalu.

### Elementos

- WhatsApp.
- Facebook.
- Instagram.
- TikTok.
- Direccion o zona de atencion.

### Accion Principal

Abrir el canal de contacto correspondiente.

## Diagrama Textual De Navegacion

```text
Inicio
|-- Buscar
|-- Categoria
|   `-- Productos
|       `-- Detalle
|           `-- Carrito
|               `-- Checkout
|                   `-- WhatsApp
|-- Promociones
`-- Perfil
```

## Acciones Principales Por Pantalla

| Pantalla | Accion principal | Pantalla destino |
| --- | --- | --- |
| Splash | Avanzar automaticamente | Onboarding / Home |
| Onboarding | Presentar la app y comenzar | Home |
| Home | Descubrir y elegir producto | Detalle de producto |
| Home | Buscar producto | Buscar |
| Home | Abrir categoria | Productos por categoria |
| Categorias | Seleccionar categoria | Productos por categoria |
| Productos por categoria | Elegir producto | Detalle de producto |
| Detalle de producto | Agregar al carrito | Carrito |
| Detalle de producto | Pedir directamente | WhatsApp |
| Carrito | Continuar pedido | Checkout |
| Checkout | Enviar pedido | WhatsApp |
| Pedidos | Revisar pedidos | Detalle de pedido, cuando aplique |
| Perfil | Abrir datos o accesos | Contacto / Configuracion |
| Buscar | Abrir resultado | Detalle de producto |
| Favoritos | Abrir favorito | Detalle de producto |
| Promociones | Abrir promocion | Detalle de producto / Categoria |
| Contacto | Contactar a Kalu | WhatsApp / Red social |

## Reglas De Navegacion

- No crear pantallas aisladas sin ruta.
- Toda pantalla secundaria debe tener forma de volver.
- Bottom Navigation debe mantenerse en pantallas principales.
- Detalle, Checkout y pantallas secundarias pueden abrirse sobre la navegacion principal.
- No usar rutas desordenadas.
- Centralizar rutas si la app crece.
- Mantener nombres de rutas consistentes.
- No conectar Supabase ni login hasta la fase correspondiente.

## Reglas Para Codex

Codex debe:

- Leer `UI_FLOW.md` antes de crear pantallas.
- Mantener coherencia con el flujo documentado.
- No agregar pantallas nuevas sin actualizar este archivo.
- No romper Bottom Navigation.
- Mantener acciones claras.
- Usar nombres de rutas consistentes.
- Respetar `PROJECT_MANUAL.md`, `ARCHITECTURE.md`, `DESIGN_SYSTEM.md`, `COMPONENT_LIBRARY.md`, `REVIEW_CHECKLIST.md` y `DECISIONS.md`.
- No inventar funcionalidades fuera del roadmap.

## Conclusion

`UI_FLOW.md` asegura que Kalu App tenga una navegacion clara, simple y comercial. Su objetivo es mantener el recorrido del cliente ordenado desde el descubrimiento del producto hasta el pedido por WhatsApp, evitando pantallas aisladas, rutas confusas o pasos innecesarios.
