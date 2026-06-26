\# Resumen Técnico - Kalú App Flutter



\## Proyecto

Aplicación móvil para Kalú Pastelería Casera, desarrollada en Flutter y Dart desde VS Code, con Android como plataforma principal.



\## Objetivo

Construir una app móvil tipo tienda online, inspirada en AliExpress, Temu o Mercado Libre, pero adaptada a una pastelería artesanal de Ica.



\## Backend

La app debe conectarse más adelante a Supabase, usando la misma lógica del sistema web de Kalú. En las primeras fases se trabajará con datos mock/locales.



\## Plataforma inicial

\- Android primero.

\- iOS queda como soporte futuro.

\- El desarrollo se realiza en Windows con VS Code.

\- Las pruebas se harán con Android Emulator.



\## Estilo visual

La app debe respetar la identidad visual de la web de Kalú:

\- Estilo dulce, femenino, moderno y comercial.

\- Colores principales:

&#x20; - Rosado principal.

&#x20; - Crema claro.

&#x20; - Marrón suave.

&#x20; - Blanco.

&#x20; - Tonos pastel.

\- Bordes redondeados.

\- Tarjetas limpias.

\- Botones llamativos.

\- Diseño visual atractivo para vender postres.



\## Pantallas principales

1\. Splash Screen

2\. Onboarding

3\. Inicio / Home

4\. Categorías

5\. Productos por categoría

6\. Detalle del producto

7\. Buscar productos

8\. Favoritos

9\. Carrito

10\. Checkout

11\. Confirmación de pedido

12\. Pedidos

13\. Detalle del pedido

14\. Perfil

15\. Contacto

16\. Promociones

17\. Configuración



\## Módulos principales

\- Catálogo de productos.

\- Categorías.

\- Promociones.

\- Carrito.

\- Pedido por WhatsApp.

\- Perfil de cliente.

\- Historial de pedidos.

\- Conexión futura con Supabase.

\- Panel administrativo futuro.



\## Categorías iniciales

\- Cuchareables

\- Tortas 1/4 kg

\- Tortas 1 kg

\- Pies

\- Bocaditos

\- Promociones



\## Productos iniciales de prueba

\- Torta de Chocolate con Fudge Casero

\- Cheesecake de Maracuyá

\- Tres Leches

\- Torta Sublime con Maní

\- Pie de Limón

\- Torta de Pistacho

\- Carrot Cake

\- Torta de Chocoteja con Pecanas



\## Arquitectura Flutter

Usar esta estructura:



lib/

&#x20; core/

&#x20;   constants/

&#x20;   theme/

&#x20;   routes/

&#x20; data/

&#x20;   models/

&#x20;   mock/

&#x20;   services/

&#x20; presentation/

&#x20;   screens/

&#x20;     splash/

&#x20;     onboarding/

&#x20;     home/

&#x20;     categories/

&#x20;     products/

&#x20;     cart/

&#x20;     checkout/

&#x20;     orders/

&#x20;     profile/

&#x20;     contact/

&#x20;     promotions/

&#x20;   widgets/



\## Reglas de desarrollo

\- No hacer toda la app de golpe.

\- Trabajar fase por fase.

\- Usar datos mock primero.

\- No conectar Supabase hasta que la interfaz esté lista.

\- No agregar paquetes innecesarios.

\- No romper pantallas anteriores.

\- Mantener la app compilable.

\- Ejecutar flutter analyze después de cada fase.

\- Android es la prioridad.

\- iOS no se configura por ahora.

