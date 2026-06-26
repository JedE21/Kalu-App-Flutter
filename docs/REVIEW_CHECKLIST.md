# REVIEW_CHECKLIST.md

## Portada

- **Documento:** REVIEW_CHECKLIST.md
- **Proyecto:** Kalu App Flutter
- **Uso:** revision de calidad antes de cerrar cambios
- **Plataforma inicial:** Android
- **Tecnologia:** Flutter + Dart

## Proposito Del Checklist

Este documento sirve como lista oficial de revision de calidad para Kalu App Flutter. Su objetivo es evitar errores, mantener calidad visual, tecnica y funcional, y asegurar que cada cambio sea revisado antes de hacer commit.

Codex debe usar este checklist al cerrar sprints, modulos, pantallas, componentes o correcciones importantes. La revision ayuda a confirmar que el cambio respeta el alcance solicitado, mantiene la app estable y conserva la identidad visual de Kalu.

## Cuando Usar Este Checklist

Debe usarse:

- Al terminar un sprint.
- Al terminar una pantalla.
- Al terminar un componente reutilizable.
- Antes de hacer commit.
- Antes de hacer push.
- Antes de integrar Supabase.
- Despues de corregir errores importantes.

## Revision General

- [ ] La app compila correctamente.
- [ ] `flutter analyze` no muestra errores criticos.
- [ ] No se rompieron pantallas anteriores.
- [ ] El cambio corresponde exactamente a la tarea solicitada.
- [ ] No se agregaron funcionalidades fuera del alcance.
- [ ] No se modificaron archivos innecesarios.
- [ ] `TODO.md` fue actualizado si correspondia.
- [ ] `CHANGELOG.md` fue actualizado si correspondia.
- [ ] `DECISIONS.md` fue actualizado si hubo una decision importante.

## Revision Visual

- [ ] La interfaz respeta `DESIGN_SYSTEM.md`.
- [ ] Los colores corresponden a Kalu.
- [ ] Los botones son consistentes.
- [ ] Las tarjetas mantienen bordes redondeados y sombra suave.
- [ ] Los textos son legibles.
- [ ] Los precios se muestran de forma clara.
- [ ] La pantalla no esta sobrecargada.
- [ ] Hay buen espacio entre elementos.
- [ ] La app se ve bien en Android Emulator.
- [ ] Los estados vacio, carga y error estan considerados cuando aplica.

## Revision De Componentes

- [ ] Se reutilizaron componentes existentes.
- [ ] No se duplico un widget que ya existia.
- [ ] Si se creo un componente nuevo, esta justificado.
- [ ] Si se creo un componente reutilizable, debe documentarse en `COMPONENT_LIBRARY.md`.
- [ ] Los widgets tienen nombres claros.
- [ ] Los widgets son pequenos y faciles de mantener.
- [ ] Se uso `const` cuando fue posible.

## Revision De Arquitectura

- [ ] La estructura respeta `ARCHITECTURE.md`.
- [ ] Las pantallas estan en `presentation/screens`.
- [ ] Los widgets reutilizables estan en `shared/widgets`.
- [ ] Los modelos estan en `data/models`.
- [ ] Los datos mock estan en `data/mock`.
- [ ] Los servicios estan en `data/services` si aplica.
- [ ] No hay logica de datos pesada dentro de la UI.
- [ ] No hay imports innecesarios.
- [ ] No hay ciclos de dependencias.

## Revision Funcional

- [ ] La navegacion funciona.
- [ ] Los botones principales responden.
- [ ] Las listas muestran datos correctamente.
- [ ] Los filtros funcionan si aplican.
- [ ] El carrito funciona si aplica.
- [ ] El checkout funciona si aplica.
- [ ] WhatsApp se genera correctamente si aplica.
- [ ] Las acciones no producen errores en consola.

## Revision Responsive

- [ ] La pantalla se adapta a Android.
- [ ] No hay overflow visible.
- [ ] Los textos no se cortan de forma incorrecta.
- [ ] Los botones tienen tamano tactil comodo.
- [ ] Las listas hacen scroll correctamente.
- [ ] El Bottom Navigation se mantiene visible y usable.
- [ ] El teclado no tapa formularios importantes.

## Revision De Codigo Limpio

- [ ] El codigo es entendible.
- [ ] No hay codigo muerto.
- [ ] No hay comentarios innecesarios.
- [ ] No hay funciones demasiado largas.
- [ ] No hay archivos demasiado grandes sin necesidad.
- [ ] Las variables tienen nombres claros.
- [ ] Las clases usan `PascalCase`.
- [ ] Los archivos usan `snake_case`.
- [ ] No hay duplicacion evidente.

## Revision De Datos Mock

- [ ] Los datos mock estan fuera de las pantallas.
- [ ] Los datos mock usan modelos.
- [ ] Los datos mock son faciles de reemplazar por Supabase.
- [ ] No hay datos quemados innecesarios dentro de widgets.
- [ ] Los productos de Kalu son coherentes con el negocio.

## Revision De Supabase, Cuando Aplique

- [ ] No se agregaron claves privadas.
- [ ] No se expuso `service_role key`.
- [ ] Se uso `anon key` solo cuando corresponda.
- [ ] Las consultas no estan dentro de widgets.
- [ ] La logica esta en services/repositories.
- [ ] Se respetan las reglas de `BACKEND_SUPABASE.md`.
- [ ] No se modifico RLS sin documentarlo.

## Revision De Git

- [ ] Se reviso `git status`.
- [ ] Se reviso `git diff`.
- [ ] El commit tiene mensaje claro.
- [ ] No se subieron archivos temporales.
- [ ] No se subieron claves ni credenciales.
- [ ] Se hizo push despues del commit.

## Comandos Recomendados

```bash
flutter analyze
flutter run -d emulator-5554
git status
git diff
git add .
git commit -m "mensaje"
git push
```

## Protocolo De Cierre De Sprint

Antes de cerrar un sprint, Codex debe:

1. Revisar la tarea solicitada.
2. Confirmar archivos modificados.
3. Ejecutar o solicitar `flutter analyze`.
4. Revisar este checklist.
5. Indicar si hay pendientes.
6. No avanzar al siguiente sprint sin aprobacion.

## Reglas Para Codex

- No cerrar una tarea si no compila.
- No avanzar si hay errores criticos.
- No asumir que todo esta bien sin verificar.
- No modificar archivos fuera del alcance.
- No inventar funcionalidades.
- Informar claramente que se modifico.
- Recomendar commit solo cuando el estado sea estable.

## Conclusion

Este checklist es obligatorio para mantener Kalu App estable, profesional y escalable. Debe funcionar como una pausa de calidad antes de cerrar cambios, confirmar commits o avanzar a nuevos sprints.
