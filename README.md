# Kalú App Flutter

Aplicación móvil para **Kalú Pastelería Casera**, desarrollada en Flutter, enfocada primero en Android y preparada para integrarse con Supabase en una fase posterior.

## Estado Actual Del Proyecto

- Proyecto Flutter creado.
- Android Emulator configurado.
- Navegación base implementada.
- Design System inicial creado.
- Home tipo tienda online implementado con datos mock.
- Modelos y datos mock creados.
- Categorías y productos por categoría implementados.
- Detalle de producto implementado.
- Carrito local funcional implementado.
- Checkout por WhatsApp pendiente.
- Supabase planificado para una fase posterior.

## Tecnologías

- Flutter
- Dart
- Android
- VS Code
- Codex
- Git
- GitHub
- Supabase, planificado

## Objetivo Del Proyecto

Crear una aplicación móvil tipo tienda online, inspirada en apps comerciales como AliExpress, Mercado Libre o Temu, pero adaptada a una pastelería artesanal.

La app busca ofrecer una experiencia visual moderna, limpia y comercial para explorar postres, revisar categorías, agregar productos al carrito y preparar pedidos de forma sencilla.

## Módulos Principales

- Splash
- Home
- Categorías
- Productos
- Detalle del producto
- Carrito
- Checkout por WhatsApp
- Favoritos
- Buscar
- Perfil
- Promociones
- Configuración

## Estructura General Del Proyecto

```text
kalu_app/
|-- android/
|-- ios/
|-- lib/
|   |-- core/
|   |   |-- constants/
|   |   `-- theme/
|   |-- data/
|   |   |-- mock/
|   |   |-- models/
|   |   `-- services/
|   |-- presentation/
|   |   |-- screens/
|   |   `-- widgets/
|   |-- shared/
|   |   |-- constants/
|   |   |-- theme/
|   |   |-- utils/
|   |   `-- widgets/
|   `-- main.dart
|-- test/
|-- web/
|-- pubspec.yaml
|-- ROADMAP.md
|-- TODO.md
|-- docs/
|   |-- PROJECT_MANUAL.md
|   |-- DESIGN_SYSTEM.md
|   |-- COMPONENT_LIBRARY.md
|   |-- ARCHITECTURE.md
|   |-- BACKEND_SUPABASE.md
|   |-- REVIEW_CHECKLIST.md
|   |-- DECISIONS.md
|   |-- UI_FLOW.md
|   `-- PROMPTS.md
`-- README.md
```

## Cómo Ejecutar El Proyecto

Verificar el entorno Flutter:

```bash
flutter doctor
```

Instalar dependencias:

```bash
flutter pub get
```

Analizar el proyecto:

```bash
flutter analyze
```

Ejecutar en Android Emulator:

```bash
flutter run -d emulator-5554
```

## Flujo De Trabajo

El desarrollo se organiza por sprints pequeños y controlados. Cada sprint debe mantener la app compilable y avanzar solo el módulo definido.

El flujo de trabajo recomendado es:

- Revisar `ROADMAP.md` y `TODO.md`.
- Implementar cambios pequeños y verificables.
- Usar componentes reutilizables del Design System.
- Ejecutar `flutter analyze` antes de cada commit.
- Versionar avances con Git.
- Subir cambios a GitHub.
- Usar Codex como apoyo para implementación, revisión y documentación.

## Roadmap Resumido

- **V1:** App funcional con datos mock y pedido por WhatsApp.
- **V2:** Integración con Supabase.
- **V3:** Login, pedidos reales e historial.
- **V4:** Notificaciones, cupones y mejoras avanzadas.

## Reglas De Desarrollo

- Mantener app compilable.
- No conectar Supabase antes de la fase definida.
- Trabajar por módulos pequeños.
- Ejecutar `flutter analyze` antes de cada commit.
- Usar componentes reutilizables.
- Evitar paquetes externos innecesarios.
- Mantener Android como prioridad inicial.

## Créditos

Proyecto desarrollado para **Kalú Pastelería Casera**.

Autor/desarrollador: **JedE21**.
