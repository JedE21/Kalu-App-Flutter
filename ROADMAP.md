# ROADMAP.md - Kalu App Flutter

## Objetivo General

Desarrollar una aplicacion movil para Kalu Pasteleria Casera usando Flutter, con estilo de tienda online moderna, enfocada primero en Android y preparada para crecer con Supabase en una fase posterior.

## Sprint 0: Preparacion Del Proyecto

Objetivo: dejar el proyecto ordenado y escalable.

Tareas:

- Crear proyecto Flutter.
- Verificar entorno Flutter.
- Configurar emulador Android.
- Crear estructura de carpetas.
- Crear archivo de colores.
- Crear tema visual.
- Configurar `main.dart`.
- Mantener app compilable.

Estado: completado.

## Sprint 1: Navegacion Base

Objetivo: crear la estructura principal de navegacion.

Pantallas:

- Inicio.
- Categorias.
- Carrito.
- Pedidos.
- Perfil.

Debe incluir:

- Bottom Navigation Bar.
- Pantallas simples.
- Navegacion funcional.

No incluir todavia:

- Supabase.
- Login.
- Productos reales.
- Carrito avanzado.

Estado: completado.

## Sprint 2: Design System De Kalu

Objetivo: crear la base visual reutilizable de la aplicacion.

Debe incluir:

- Colores.
- Tema.
- Tipografias.
- Espaciados.
- Radios.
- Sombras.
- Iconos.
- Componentes reutilizables base.

Componentes esperados:

- `AppButton`.
- `AppCard`.
- `AppTextField`.
- `AppSearchBar`.
- `AppBanner`.
- `ProductCard`.
- `CategoryChip`.
- `PriceWidget`.
- `QuantitySelector`.
- `SectionTitle`.
- `AppLoading`.
- `AppEmpty`.
- `AppError`.
- `BottomNavBar`.
- `AppScaffold`.

Estado: completado.

## Sprint 3: Home Tipo Tienda Online

Objetivo: construir la pantalla Inicio con estilo comercial usando el Design System.

Debe incluir:

- Saludo inicial.
- Buscador visual.
- Banner promocional.
- Categorias horizontales.
- Seccion de mas vendidos.
- Seccion de promociones.
- Tarjetas de productos con precio.

Usar datos mock.

Estado: completado.

## Sprint 4: Modelos Y Datos Mock

Objetivo: crear los modelos principales y datos de prueba.

Modelos:

- `ProductModel`.
- `CategoryModel`.
- `PromotionModel`.

Datos:

- Categorias.
- Productos.
- Promociones.

Estado: completado.

## Sprint 5: Categorias Y Productos Por Categoria

Objetivo: listar productos por categoria.

Debe incluir:

- Pantalla de categorias.
- Pantalla de productos filtrados.
- Tarjetas de productos.
- Navegacion al detalle.

Estado: completado.

## Sprint 6: Detalle De Producto

Objetivo: mostrar informacion completa de cada producto.

Debe incluir:

- Imagen o placeholder.
- Nombre.
- Categoria.
- Precio.
- Descripcion.
- Estado disponible.
- Selector de cantidad.
- Boton agregar al carrito.
- Boton pedir por WhatsApp.

Estado: completado.

## Sprint 7: Carrito Local Funcional

Objetivo: crear carrito local funcional.

Debe incluir:

- Lista de productos agregados.
- Aumentar cantidad.
- Disminuir cantidad.
- Eliminar producto.
- Vaciar carrito.
- Subtotal por producto.
- Total general.
- Boton continuar pedido.

Estado: completado.

## Sprint 8: Checkout Por WhatsApp

Objetivo: generar pedido por WhatsApp.

Debe incluir:

- Datos del cliente.
- Direccion o referencia.
- Resumen del pedido.
- Observaciones.
- Boton enviar por WhatsApp.

No incluir todavia:

- Pagos online.
- Supabase.
- Pedidos reales en backend.

Estado: pendiente.

## Sprint 9: Conexion Con Supabase

Objetivo: reemplazar datos mock por datos reales.

Debe incluir:

- Configuracion Supabase.
- Consulta de productos.
- Consulta de categorias.
- Consulta de promociones.
- Servicios y repositorios para separar backend de UI.

Estado: futuro.

## Sprint 10: Pedidos Reales

Objetivo: guardar pedidos en Supabase.

Debe incluir:

- Registro de pedido.
- Detalle del pedido.
- Estado del pedido.
- Historial basico cuando aplique.

Estado: futuro.

## Sprint 11: Perfil Y Autenticacion

Objetivo: agregar usuario cliente.

Debe incluir:

- Login.
- Registro.
- Perfil.
- Historial de pedidos.

Estado: futuro.

## Reglas Del Roadmap

- Avanzar un sprint a la vez.
- No saltar fases.
- No conectar Supabase antes del Sprint 9.
- Mantener la app compilable despues de cada sprint.
- Ejecutar `flutter analyze` al terminar cada sprint con cambios de codigo.
- Android es prioridad.
- iOS queda para una etapa futura.
