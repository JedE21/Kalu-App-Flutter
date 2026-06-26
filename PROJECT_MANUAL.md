warning: in the working copy of 'README.md', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/README.md b/README.md[m
[1mindex b649861..cc5d236 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -1,17 +1,140 @@[m
[31m-# kalu_app[m
[32m+[m[32m# Kalú App Flutter[m
 [m
[31m-A new Flutter project.[m
[32m+[m[32mAplicación móvil para **Kalú Pastelería Casera**, desarrollada en Flutter, enfocada primero en Android y preparada para integrarse con Supabase en una fase posterior.[m
 [m
[31m-## Getting Started[m
[32m+[m[32m## Estado Actual Del Proyecto[m
 [m
[31m-This project is a starting point for a Flutter application.[m
[32m+[m[32m- Proyecto Flutter creado.[m
[32m+[m[32m- Android Emulator configurado.[m
[32m+[m[32m- Navegación base implementada.[m
[32m+[m[32m- Design System inicial creado.[m
[32m+[m[32m- Home tipo tienda online en construcción.[m
[32m+[m[32m- Datos mock en desarrollo.[m
[32m+[m[32m- Supabase planificado para una fase posterior.[m
 [m
[31m-A few resources to get you started if this is your first Flutter project:[m
[32m+[m[32m## Tecnologías[m
 [m
[31m-- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)[m
[31m-- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)[m
[31m-- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)[m
[32m+[m[32m- Flutter[m
[32m+[m[32m- Dart[m
[32m+[m[32m- Android[m
[32m+[m[32m- VS Code[m
[32m+[m[32m- Codex[m
[32m+[m[32m- Git[m
[32m+[m[32m- GitHub[m
[32m+[m[32m- Supabase, planificado[m
 [m
[31m-For help getting started with Flutter development, view the[m
[31m-[online documentation](https://docs.flutter.dev/), which offers tutorials,[m
[31m-samples, guidance on mobile development, and a full API reference.[m
[32m+[m[32m## Objetivo Del Proyecto[m
[32m+[m
[32m+[m[32mCrear una aplicación móvil tipo tienda online, inspirada en apps comerciales como AliExpress, Mercado Libre o Temu, pero adaptada a una pastelería artesanal.[m
[32m+[m
[32m+[m[32mLa app busca ofrecer una experiencia visual moderna, limpia y comercial para explorar postres, revisar categorías, agregar productos al carrito y preparar pedidos de forma sencilla.[m
[32m+[m
[32m+[m[32m## Módulos Principales[m
[32m+[m
[32m+[m[32m- Splash[m
[32m+[m[32m- Home[m
[32m+[m[32m- Categorías[m
[32m+[m[32m- Productos[m
[32m+[m[32m- Detalle del producto[m
[32m+[m[32m- Carrito[m
[32m+[m[32m- Checkout por WhatsApp[m
[32m+[m[32m- Favoritos[m
[32m+[m[32m- Buscar[m
[32m+[m[32m- Perfil[m
[32m+[m[32m- Promociones[m
[32m+[m[32m- Configuración[m
[32m+[m
[32m+[m[32m## Estructura General Del Proyecto[m
[32m+[m
[32m+[m[32m```text[m
[32m+[m[32mkalu_app/[m
[32m+[m[32m|-- android/[m
[32m+[m[32m|-- ios/[m
[32m+[m[32m|-- lib/[m
[32m+[m[32m|   |-- core/[m
[32m+[m[32m|   |   |-- constants/[m
[32m+[m[32m|   |   |-- routes/[m
[32m+[m[32m|   |   `-- theme/[m
[32m+[m[32m|   |-- data/[m
[32m+[m[32m|   |   |-- mock/[m
[32m+[m[32m|   |   |-- models/[m
[32m+[m[32m|   |   `-- services/[m
[32m+[m[32m|   |-- presentation/[m
[32m+[m[32m|   |   |-- screens/[m
[32m+[m[32m|   |   `-- widgets/[m
[32m+[m[32m|   |-- shared/[m
[32m+[m[32m|   |   |-- constants/[m
[32m+[m[32m|   |   |-- theme/[m
[32m+[m[32m|   |   |-- utils/[m
[32m+[m[32m|   |   `-- widgets/[m
[32m+[m[32m|   `-- main.dart[m
[32m+[m[32m|-- test/[m
[32m+[m[32m|-- web/[m
[32m+[m[32m|-- pubspec.yaml[m
[32m+[m[32m|-- ROADMAP.md[m
[32m+[m[32m|-- TODO.md[m
[32m+[m[32m`-- README.md[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m## Cómo Ejecutar El Proyecto[m
[32m+[m
[32m+[m[32mVerificar el entorno Flutter:[m
[32m+[m
[32m+[m[32m```bash[m
[32m+[m[32mflutter doctor[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mInstalar dependencias:[m
[32m+[m
[32m+[m[32m```bash[m
[32m+[m[32mflutter pub get[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mAnalizar el proyecto:[m
[32m+[m
[32m+[m[32m```bash[m
[32m+[m[32mflutter analyze[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mEjecutar en Android Emulator:[m
[32m+[m
[32m+[m[32m```bash[m
[32m+[m[32mflutter run -d emulator-5554[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m## Flujo De Trabajo[m
[32m+[m
[32m+[m[32mEl desarrollo se organiza por sprints pequeños y controlados. Cada sprint debe mantener la app compilable y avanzar solo el módulo definido.[m
[32m+[m
[32m+[m[32mEl flujo de trabajo recomendado es:[m
[32m+[m
[32m+[m[32m- Revisar `ROADMAP.md` y `TODO.md`.[m
[32m+[m[32m- Implementar cambios pequeños y verificables.[m
[32m+[m[32m- Usar componentes reutilizables del Design System.[m
[32m+[m[32m- Ejecutar `flutter analyze` antes de cada commit.[m
[32m+[m[32m- Versionar avances con Git.[m
[32m+[m[32m- Subir cambios a GitHub.[m
[32m+[m[32m- Usar Codex como apoyo para implementación, revisión y documentación.[m
[32m+[m
[32m+[m[32m## Roadmap Resumido[m
[32m+[m
[32m+[m[32m- **V1:** App funcional con datos mock y pedido por WhatsApp.[m
[32m+[m[32m- **V2:** Integración con Supabase.[m
[32m+[m[32m- **V3:** Login, pedidos reales e historial.[m
[32m+[m[32m- **V4:** Notificaciones, cupones y mejoras avanzadas.[m
[32m+[m
[32m+[m[32m## Reglas De Desarrollo[m
[32m+[m
[32m+[m[32m- Mantener app compilable.[m
[32m+[m[32m- No conectar Supabase antes de la fase definida.[m
[32m+[m[32m- Trabajar por módulos pequeños.[m
[32m+[m[32m- Ejecutar `flutter analyze` antes de cada commit.[m
[32m+[m[32m- Usar componentes reutilizables.[m
[32m+[m[32m- Evitar paquetes externos innecesarios.[m
[32m+[m[32m- Mantener Android como prioridad inicial.[m
[32m+[m
[32m+[m[32m## Créditos[m
[32m+[m
[32m+[m[32mProyecto desarrollado para **Kalú Pastelería Casera**.[m
[32m+[m
[32m+[m[32mAutor/desarrollador: **JedE21**.[m
