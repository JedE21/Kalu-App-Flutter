# BACKEND_SUPABASE.md

## Portada

- **Documento:** BACKEND_SUPABASE.md
- **Proyecto:** Kalu App Flutter
- **Uso:** guia futura para backend Supabase
- **Estado:** planificado para una fase posterior
- **Plataforma inicial:** Android

## Proposito Del Documento

Este documento define las reglas iniciales para la futura integracion de Kalu App Flutter con Supabase.

Supabase no debe conectarse durante la V1 local con datos mock. La app primero debe consolidar navegacion, pantallas principales, Design System, modelos, carrito local y checkout por WhatsApp.

## Estado Actual

- Supabase esta planificado para una fase posterior.
- La V1 trabaja con datos mock/locales.
- La UI no debe depender todavia de consultas remotas.
- Los modelos deben prepararse para reemplazar datos mock por datos reales mas adelante.

## Cuando Integrar Supabase

Supabase debe integrarse solo cuando el roadmap lo indique, despues de que la UI base este estable.

Segun el roadmap actual, Supabase corresponde al Sprint 9: Conexion con Supabase.

No conectar Supabase antes de esa fase salvo aprobacion explicita.

## Alcance Futuro De Supabase

Supabase podra usarse para:

- Productos.
- Categorias.
- Promociones.
- Pedidos.
- Detalle de pedidos.
- Clientes.
- Autenticacion en una fase posterior.
- Storage para imagenes de productos.

## Fuera De Alcance Para V1

En la V1 no se debe incluir:

- Conexion real a Supabase.
- Login real.
- Pedidos guardados en backend.
- Pagos online.
- RLS modificada desde la app.
- Claves privadas dentro del repositorio.

## Reglas De Seguridad

- No guardar claves privadas en el repositorio.
- No exponer `service_role key`.
- Usar `anon key` solo cuando corresponda.
- No pegar credenciales en documentacion publica.
- No modificar politicas RLS sin documentar la decision.
- No mezclar secretos con codigo Flutter.
- Revisar `.gitignore` antes de agregar archivos de configuracion.

## Arquitectura Esperada

La integracion debe respetar `ARCHITECTURE.md`.

Flujo esperado:

```text
Supabase
   |
   v
data/services
   |
   v
data/repositories
   |
   v
data/models
   |
   v
presentation
```

Las pantallas no deben ejecutar consultas directas a Supabase. La logica de conexion debe vivir en servicios y repositorios.

## Servicios Futuros

Servicios posibles:

- `SupabaseService`.
- `ProductService`.
- `CategoryService`.
- `PromotionService`.
- `OrderService`.
- `AuthService`, cuando llegue la fase de autenticacion.

## Repositorios Futuros

Repositorios posibles:

- `SupabaseProductRepository`.
- `SupabaseCategoryRepository`.
- `SupabasePromotionRepository`.
- `OrderRepository`.
- `CustomerRepository`.

El objetivo es poder cambiar de datos mock a Supabase sin romper pantallas.

## Modelos

Los modelos existentes deben mantenerse como contrato entre data y UI.

Modelos previstos:

- `ProductModel`.
- `CategoryModel`.
- `PromotionModel`.
- `CartItem`.
- `OrderModel`, futuro.
- `OrderDetailModel`, futuro.
- `UserModel`, futuro.

Cuando se conecte Supabase, los modelos deben incluir conversiones como `fromJson`, `toJson`, `fromMap` o `toMap` si son necesarias.

## Tablas Futuras Sugeridas

Tablas posibles:

- `categories`.
- `products`.
- `promotions`.
- `orders`.
- `order_items`.
- `customers`.
- `profiles`, cuando exista autenticacion.

Estas tablas son una guia inicial. La estructura definitiva debe validarse antes de implementarse.

## Reglas Para Codex

Codex debe:

- Leer este documento antes de trabajar en Supabase.
- No conectar Supabase antes de la fase autorizada.
- No crear claves ni credenciales falsas.
- No escribir `service_role key`.
- No poner consultas dentro de widgets.
- Usar servicios y repositorios.
- Mantener modelos existentes cuando sea posible.
- Actualizar `DECISIONS.md` si cambia la estrategia de backend.
- Actualizar `REVIEW_CHECKLIST.md` si aparecen nuevas reglas de calidad.

## Criterios De Calidad Para La Fase Supabase

- La app sigue compilando.
- `flutter analyze` no muestra errores criticos.
- No hay secretos en Git.
- Las pantallas no dependen directamente de Supabase.
- Los datos mock pueden reemplazarse sin romper UI.
- Los errores de carga se muestran con componentes reutilizables.
- Los estados vacio, carga y error estan considerados.

## Conclusion

`BACKEND_SUPABASE.md` marca Supabase como backend futuro y define reglas para integrarlo de forma segura, ordenada y compatible con la arquitectura de Kalu App Flutter. Hasta que el roadmap lo autorice, la app debe seguir trabajando con datos mock/locales.
