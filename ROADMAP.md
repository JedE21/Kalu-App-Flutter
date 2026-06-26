\# ROADMAP.md - Kalú App Flutter



\## Objetivo general

Desarrollar una aplicación móvil para Kalú Pastelería Casera usando Flutter, con estilo de tienda online moderna, enfocada primero en Android y luego preparada para crecer con Supabase.



\---



\## Sprint 0: Preparación del proyecto

Objetivo: dejar el proyecto ordenado y escalable.



Tareas:

\- Crear estructura de carpetas.

\- Crear archivo de colores.

\- Crear tema visual.

\- Configurar main.dart.

\- Mantener app compilable.



Estado: En proceso.



\---



\## Sprint 1: Navegación base

Objetivo: crear la estructura principal de navegación.



Pantallas:

\- Inicio

\- Categorías

\- Carrito

\- Pedidos

\- Perfil



Debe incluir:

\- Bottom Navigation Bar.

\- Pantallas vacías simples.

\- Navegación funcional.



No incluir todavía:

\- Productos reales.

\- Supabase.

\- Login.

\- Carrito real.



\---



\## Sprint 2: Home tipo tienda online

Objetivo: diseñar la pantalla principal inspirada en AliExpress/Mercado Libre, pero con estilo Kalú.



Debe incluir:

\- Saludo inicial.

\- Buscador visual.

\- Banner promocional.

\- Categorías horizontales.

\- Sección de promociones.

\- Sección de productos destacados.

\- Tarjetas de productos con precio.



Usar datos mock.



\---



\## Sprint 3: Modelos y datos mock

Objetivo: crear los modelos principales y datos de prueba.



Modelos:

\- ProductModel

\- CategoryModel

\- PromotionModel



Categorías:

\- Cuchareables

\- Tortas 1/4 kg

\- Tortas 1 kg

\- Pies

\- Bocaditos

\- Promociones



\---



\## Sprint 4: Productos y categorías

Objetivo: listar productos por categoría.



Debe incluir:

\- Pantalla de categorías.

\- Pantalla de productos filtrados.

\- Tarjetas de productos.

\- Navegación al detalle.



\---



\## Sprint 5: Detalle de producto

Objetivo: mostrar información completa de cada producto.



Debe incluir:

\- Imagen.

\- Nombre.

\- Precio.

\- Descripción.

\- Cantidad.

\- Botón agregar al carrito.

\- Botón pedir por WhatsApp.



\---



\## Sprint 6: Carrito

Objetivo: crear carrito local funcional.



Debe incluir:

\- Lista de productos agregados.

\- Aumentar cantidad.

\- Disminuir cantidad.

\- Eliminar producto.

\- Subtotal.

\- Total.



\---



\## Sprint 7: Checkout por WhatsApp

Objetivo: generar pedido por WhatsApp.



Debe incluir:

\- Datos del cliente.

\- Resumen del pedido.

\- Observaciones.

\- Botón enviar por WhatsApp.



\---



\## Sprint 8: Conexión con Supabase

Objetivo: reemplazar datos mock por datos reales.



Debe incluir:

\- Configuración Supabase.

\- Consulta de productos.

\- Consulta de categorías.

\- Consulta de promociones.



\---



\## Sprint 9: Pedidos reales

Objetivo: guardar pedidos en Supabase.



Debe incluir:

\- Registro de pedido.

\- Detalle del pedido.

\- Estado del pedido.



\---



\## Sprint 10: Perfil y autenticación

Objetivo: agregar usuario cliente.



Debe incluir:

\- Login.

\- Registro.

\- Perfil.

\- Historial de pedidos.



\---



\## Reglas del roadmap

\- Avanzar un sprint a la vez.

\- No saltar fases.

\- No conectar Supabase antes del Sprint 8.

\- Mantener la app compilable después de cada sprint.

\- Ejecutar flutter analyze al terminar cada sprint.

\- Android es prioridad.

\- iOS queda para una etapa futura.

