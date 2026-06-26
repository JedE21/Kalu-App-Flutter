# TODO.md - Kalu App Flutter

## Sprint 0: Preparacion Del Proyecto

- [x] Crear proyecto Flutter.
- [x] Verificar `flutter doctor`.
- [x] Ejecutar app base.
- [x] Configurar emulador Android.
- [x] Crear estructura de carpetas.
- [x] Crear tema visual.
- [x] Crear archivo de colores.
- [x] Configurar `main.dart`.

## Sprint 1: Navegacion Base

- [x] Crear pantalla Inicio.
- [x] Crear pantalla Categorias.
- [x] Crear pantalla Carrito.
- [x] Crear pantalla Pedidos.
- [x] Crear pantalla Perfil.
- [x] Crear Bottom Navigation Bar.
- [x] Probar navegacion.
- [x] Ejecutar `flutter analyze`.

## Sprint 2: Design System De Kalu

- [x] Crear estructura `lib/shared`.
- [x] Crear theme reutilizable.
- [x] Crear constants reutilizables.
- [x] Crear utils reutilizables.
- [x] Crear `AppButton`.
- [x] Crear `AppCard`.
- [x] Crear `AppTextField`.
- [x] Crear `AppSearchBar`.
- [x] Crear `AppBanner`.
- [x] Crear `ProductCard`.
- [x] Crear `CategoryChip`.
- [x] Crear `PriceWidget`.
- [x] Crear `QuantitySelector`.
- [x] Crear `SectionTitle`.
- [x] Crear `AppLoading`.
- [x] Crear `AppEmpty`.
- [x] Crear `AppError`.
- [x] Crear `BottomNavBar`.
- [x] Crear `AppScaffold`.

## Sprint 3: Home Tipo Tienda Online

- [x] Construir Home usando Design System.
- [x] Agregar saludo principal.
- [x] Agregar buscador con `AppSearchBar`.
- [x] Agregar banner promocional con `AppBanner`.
- [x] Agregar categorias horizontales con `CategoryChip`.
- [x] Agregar seccion Mas vendidos.
- [x] Agregar seccion Promociones.
- [x] Agregar tarjetas mock con `ProductCard`.
- [x] Mantener Bottom Navigation funcionando.
- [x] Ejecutar `flutter analyze`.

## Sprint 4: Modelos Y Datos Mock

- [x] Crear `CategoryModel`.
- [x] Crear `ProductModel`.
- [x] Crear `PromotionModel`.
- [x] Crear `mock_categories.dart`.
- [x] Crear `mock_products.dart`.
- [x] Crear `mock_promotions.dart`.

## Sprint 5: Categorias Y Productos Por Categoria

- [x] Mejorar pantalla Categorias.
- [x] Mostrar categorias mock.
- [x] Crear pantalla de productos por categoria.
- [x] Filtrar productos por categoria seleccionada.
- [x] Usar componentes del Design System.
- [x] Mantener Bottom Navigation funcionando.
- [x] Ejecutar `flutter analyze`.

## Sprint 6: Detalle De Producto

- [x] Crear `ProductDetailScreen`.
- [x] Abrir detalle desde Home.
- [x] Abrir detalle desde productos por categoria.
- [x] Mostrar imagen o placeholder del producto.
- [x] Mostrar nombre, categoria, precio y descripcion.
- [x] Mostrar estado disponible.
- [x] Crear selector de cantidad.
- [x] Agregar boton Agregar al carrito visual.
- [x] Agregar boton Pedir por WhatsApp visual.
- [x] Usar componentes del Design System.
- [x] Mantener Bottom Navigation funcionando.
- [x] Ejecutar `flutter analyze`.

## Sprint 7: Carrito Local Funcional

- [x] Crear `CartItem`.
- [x] Crear controlador local de carrito.
- [x] Agregar productos al carrito desde `ProductDetailScreen`.
- [x] Mostrar productos agregados en pantalla Carrito.
- [x] Permitir aumentar cantidad.
- [x] Permitir disminuir cantidad.
- [x] Permitir eliminar producto.
- [x] Permitir vaciar carrito.
- [x] Mostrar subtotal por producto.
- [x] Mostrar total general.
- [x] Agregar boton Continuar pedido visual.
- [x] Mantener Bottom Navigation funcionando.
- [x] Ejecutar `flutter analyze`.

## Sprint 8: Checkout Por WhatsApp

- [ ] Crear pantalla Checkout.
- [ ] Solicitar datos basicos del cliente.
- [ ] Solicitar direccion o referencia.
- [ ] Permitir observaciones.
- [ ] Mostrar resumen del pedido.
- [ ] Generar mensaje para WhatsApp.
- [ ] Abrir WhatsApp con el pedido preparado.
- [ ] Mantener V1 simple, sin pagos online y sin Supabase.
- [ ] Ejecutar `flutter analyze`.

## Sprint 9: Conexion Con Supabase

- [ ] Revisar `docs/BACKEND_SUPABASE.md`.
- [ ] Configurar Supabase solo cuando se autorice.
- [ ] Crear servicios/repositories para productos.
- [ ] Reemplazar productos mock por datos reales.
- [ ] Reemplazar categorias mock por datos reales.
- [ ] Reemplazar promociones mock por datos reales.
- [ ] Mantener consultas fuera de widgets.
- [ ] Ejecutar `flutter analyze`.

## Sprint 10: Pedidos Reales

- [ ] Crear modelo de pedido si corresponde.
- [ ] Crear modelo de detalle de pedido si corresponde.
- [ ] Guardar pedidos en Supabase.
- [ ] Mostrar estado de pedido.
- [ ] Mostrar historial cuando corresponda.
- [ ] Ejecutar `flutter analyze`.

## Sprint 11: Perfil Y Autenticacion

- [ ] Crear login.
- [ ] Crear registro.
- [ ] Crear perfil sincronizado.
- [ ] Mostrar historial de pedidos por cliente.
- [ ] Mantener reglas de seguridad de Supabase.
- [ ] Ejecutar `flutter analyze`.
