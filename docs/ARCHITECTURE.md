# ARCHITECTURE.md

## Portada

- **Documento:** ARCHITECTURE.md
- **Proyecto:** Kalú App Flutter
- **Plataforma inicial:** Android
- **Tecnología principal:** Flutter + Dart
- **Backend planificado:** Supabase

## Propósito Del Documento

Este archivo define la arquitectura técnica de Kalú App Flutter. Su objetivo es explicar cómo debe organizarse el proyecto, cómo se separan responsabilidades entre carpetas y cómo debe trabajar Codex al crear nuevas funcionalidades.

La arquitectura debe permitir que la app crezca por módulos, mantenga código claro y pueda pasar de datos mock a Supabase sin romper pantallas.

## Principio Principal De Arquitectura

La app debe estar organizada en capas. Cada capa tiene una responsabilidad clara y no debe invadir responsabilidades de otras capas.

Capas principales:

- `core`
- `data`
- `domain`, si se vuelve necesario
- `presentation`
- `shared`

Regla base: la UI debe consumir modelos, servicios o controladores preparados para ella, pero los modelos y servicios no deben depender de widgets ni pantallas.

## Estructura General Recomendada

```text
lib/
  core/
    constants/
    theme/
    routes/
    utils/
  data/
    models/
    mock/
    services/
    repositories/
  presentation/
    screens/
      splash/
      home/
      categories/
      products/
      cart/
      checkout/
      orders/
      profile/
      search/
      favorites/
      contact/
      promotions/
    widgets/
  shared/
    widgets/
    theme/
    constants/
    utils/
```

Esta estructura puede crecer de forma gradual. No se deben crear carpetas nuevas si no existe una necesidad real.

## Responsabilidad De Cada Carpeta

### core

Contiene configuración global, rutas, constantes, tema base y utilidades generales del proyecto.

Ejemplos:

- Constantes globales.
- Configuración de rutas.
- Tema principal.
- Utilidades transversales.

### data

Contiene modelos, datos mock, servicios externos, repositorios y futuras consultas a Supabase.

Ejemplos:

- `ProductModel`
- `CategoryModel`
- `mock_products.dart`
- Servicios locales o remotos.
- Repositorios para separar origen de datos.

### domain

Esta capa es opcional para las primeras versiones. Debe agregarse solo si la lógica de negocio crece lo suficiente como para necesitar casos de uso, entidades o reglas independientes de UI y data.

No crear `domain` por costumbre. Crear esta capa solo cuando simplifique el proyecto.

### presentation

Contiene las pantallas principales de la app y widgets específicos de cada pantalla.

Ejemplos:

- Pantalla Home.
- Pantalla Categorías.
- Pantalla Detalle de producto.
- Pantalla Carrito.
- Widgets internos que solo tienen sentido dentro de una pantalla específica.

### shared

Contiene componentes reutilizables para toda la app, como botones, tarjetas, chips, estados vacíos, estados de carga, barras de búsqueda y elementos visuales compartidos.

Todo componente que se use en múltiples pantallas debe vivir en `shared`.

## Reglas Para Pantallas

Cada pantalla debe:

- Estar en su propia carpeta.
- Tener nombre de archivo en `snake_case`.
- Tener clase en `PascalCase`.
- Usar widgets reutilizables cuando existan.
- Evitar archivos demasiado largos.
- No mezclar demasiada lógica con UI.
- Delegar piezas repetidas a widgets internos o componentes de `shared`.
- Mantener textos y acciones claras.

Ejemplo:

```text
presentation/screens/products/product_detail_screen.dart
```

## Reglas Para Widgets

- Widgets reutilizables deben ir en `shared/widgets`.
- Widgets específicos de una pantalla pueden ir dentro de `presentation/screens/[modulo]/widgets`.
- Evitar duplicar diseños.
- Usar `const` cuando sea posible.
- Separar componentes si una pantalla crece demasiado.
- Mantener nombres claros y técnicos en inglés para clases y archivos.

Regla práctica: si un widget se repite en dos o más pantallas, debe evaluarse moverlo a `shared/widgets`.

## Reglas Para Modelos

Modelos principales previstos:

- `ProductModel`
- `CategoryModel`
- `PromotionModel`
- `CartItemModel`
- `UserModel`
- `OrderModel`
- `OrderDetailModel`

Los modelos deben:

- Estar en `data/models`.
- Tener nombres claros.
- Representar datos, no UI.
- Prepararse para `fromJson` y `toJson` cuando se conecte Supabase.
- No depender directamente de widgets.
- Evitar lógica visual.

Los modelos pueden incluir helpers simples como `copyWith`, `fromMap`, `toMap` o equivalentes cuando sean útiles.

## Reglas Para Datos Mock

Los datos mock deben:

- Estar en `data/mock`.
- Ser fáciles de reemplazar por Supabase.
- Usar los mismos modelos que usará la data real.
- No estar escritos directamente dentro de las pantallas.
- Tener IDs estables cuando se relacionen productos, categorías o promociones.

Regla clave: si un dato mock se usa en más de una pantalla, debe vivir en `data/mock`, no dentro de un widget.

## Reglas Para Servicios

Servicios futuros previstos:

- `ProductService`
- `CategoryService`
- `PromotionService`
- `CartService`
- `WhatsAppService`
- `SupabaseService`
- `AuthService`
- `OrderService`

Los servicios deben:

- Estar en `data/services`.
- No contener UI.
- Encargarse de obtener, transformar o enviar datos.
- Exponer métodos claros.
- Evitar depender de pantallas.
- Manejar detalles técnicos de integración cuando corresponda.

Ejemplo: `WhatsAppService` debería preparar o abrir un mensaje de pedido, pero no debería renderizar botones.

## Reglas Para Repositorios

Cuando la app crezca, usar `repositories` para separar la fuente de datos.

Repositorios previstos:

- `MockProductRepository`
- `SupabaseProductRepository`
- `OrderRepository`
- `CartRepository`

El objetivo es permitir cambiar de mock a Supabase sin romper pantallas.

Ejemplo de intención:

```text
Pantalla -> Repository -> Service/Data source -> Model
```

Las pantallas no deben saber si el dato viene de mock, Supabase u otra fuente.

## Gestión De Estado

### Para V1

Se puede usar estado local con `StatefulWidget` o `ChangeNotifier` simple si ya está implementado.

Reglas:

- Evitar soluciones pesadas al inicio.
- Mantener estado cerca del módulo cuando sea local.
- Usar controladores simples para estado compartido pequeño, como carrito local.

### Para Futuras Versiones

Si la app crece, evaluar Riverpod o Provider. La decisión definitiva debe registrarse en `DECISIONS.md`.

No introducir una librería de estado global sin necesidad clara.

## Navegación

La navegación principal debe usar Bottom Navigation para las secciones base:

- Inicio.
- Categorías.
- Carrito.
- Pedidos.
- Perfil.

Las pantallas secundarias, como detalle de producto o checkout, pueden abrirse mediante rutas internas.

Reglas:

- Bottom Navigation es la navegación principal.
- Detalle de producto, checkout y pantallas secundarias deben ser rutas separadas o navegaciones internas claras.
- No usar rutas desordenadas.
- Centralizar rutas si el proyecto lo requiere.
- Evitar que modelos o servicios conozcan rutas o pantallas.

## Flujo Técnico De Datos En V1

```text
data/mock
   ↓
data/models
   ↓
screens/widgets
   ↓
UI
```

En V1, los datos mock alimentan modelos y las pantallas consumen esos modelos para renderizar la interfaz.

## Flujo Técnico Futuro Con Supabase

```text
Supabase
   ↓
data/services
   ↓
data/repositories
   ↓
models
   ↓
presentation
```

Cuando Supabase se integre, las pantallas deben cambiar lo menos posible. La transformación y consulta de datos debe quedar en servicios y repositorios.

## Convenciones De Nombres

### Archivos

- Usar `snake_case.dart`.

Ejemplos:

- `product_model.dart`
- `product_detail_screen.dart`
- `cart_controller.dart`

### Clases

- Usar `PascalCase`.

Ejemplos:

- `ProductModel`
- `ProductDetailScreen`
- `CartController`

### Variables Y Métodos

- Usar `camelCase`.

Ejemplos:

- `productName`
- `addProduct`
- `totalItems`

### Constantes

- Usar `lowerCamelCase` o `static const` dentro de clases.

Ejemplos:

- `static const String appName = 'Kalú';`
- `mockProducts`

## Reglas De Imports

- Usar imports claros.
- Evitar imports innecesarios.
- Evitar ciclos de dependencias.
- No importar pantallas dentro de modelos o servicios.
- No importar widgets dentro de modelos.
- Mantener dependencias en dirección clara: UI puede conocer data, pero data no debe conocer UI.

Regla clave: `data` no debe depender de `presentation`.

## Reglas De Rendimiento

- Usar `const` cuando sea posible.
- Evitar reconstrucciones innecesarias.
- No cargar listas enormes de golpe sin necesidad.
- Separar widgets si se repiten.
- Usar `ListView.builder` para listas.
- Usar `GridView.builder` o slivers cuando el contenido sea dinámico.
- Evitar lógica pesada dentro de `build`.

## Reglas De Escalabilidad

- Las pantallas deben poder crecer sin romper otros módulos.
- Los datos mock deben ser reemplazables.
- La app debe estar preparada para Supabase.
- Evitar lógica quemada en widgets.
- Mantener componentes reutilizables en `shared`.
- Mantener modelos estables.
- Separar servicios cuando aparezcan integraciones.
- Documentar decisiones técnicas importantes.

## Reglas Para Codex

Codex debe:

- Leer este documento antes de crear o modificar estructura.
- No crear carpetas nuevas sin necesidad.
- Mantener la estructura actual.
- No mover archivos importantes sin explicar.
- No conectar Supabase hasta la fase correspondiente.
- No crear servicios innecesarios.
- No duplicar widgets existentes.
- Actualizar documentación si cambia la arquitectura.
- Respetar `PROJECT_MANUAL.md`, `DESIGN_SYSTEM.md` y `COMPONENT_LIBRARY.md`.
- Mantener `flutter analyze` sin errores críticos cuando trabaje con código.

## Criterios De Calidad Técnica

- App compila.
- `flutter analyze` sin errores críticos.
- Código organizado.
- Carpetas claras.
- UI separada de datos.
- Modelos reutilizables.
- Servicios sin UI.
- Componentes reutilizables.
- Mocks reemplazables.
- Navegación clara.
- Cambios pequeños y verificables.

## Conclusión

`ARCHITECTURE.md` es la referencia técnica principal para mantener Kalú App ordenada, escalable y preparada para crecer. Este documento debe guiar la creación de pantallas, modelos, servicios, repositorios y componentes para que el proyecto avance por módulos sin perder claridad ni consistencia.
