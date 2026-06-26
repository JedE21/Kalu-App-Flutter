# PROMPTS.md

## Portada

- **Documento:** PROMPTS.md
- **Proyecto:** Kalu App Flutter
- **Uso:** biblioteca de prompts para Codex
- **Plataforma inicial:** Android
- **Autor/desarrollador:** JedE21

## Proposito Del Documento

`PROMPTS.md` es la biblioteca oficial de prompts reutilizables para trabajar con Codex en Kalu App Flutter.

Su objetivo es ejecutar tareas de manera clara, controlada y sin gastar tokens innecesarios. Tambien ayuda a mantener el desarrollo ordenado, respetar el roadmap y evitar repetir instrucciones largas en cada solicitud.

## Reglas Generales Para Usar Prompts

- Dar una tarea por prompt.
- No pedir toda la app de golpe.
- No avanzar a otro sprint sin aprobacion.
- Pedir siempre que lea `AGENTS.md` y los documentos relevantes dentro de `docs/`.
- Pedir siempre que mantenga la app compilable.
- Pedir siempre resumen de archivos modificados.
- Pedir que no agregue paquetes externos sin justificar.
- Indicar restricciones claras cuando la tarea sea solo documentacion, solo UI o solo correccion.
- Pedir `flutter analyze` cuando haya cambios de codigo.

## Prompt Base Para Cualquier Tarea

```text
Lee AGENTS.md, ROADMAP.md, TODO.md y todos los documentos relevantes dentro de docs/.

Trabaja solo en la tarea solicitada.

No avances a otro modulo.
No conectes Supabase salvo que se solicite.
No agregues paquetes externos sin justificar.
Manten la app compilable.

Al finalizar:
1. Indica que hiciste.
2. Indica que archivos creaste o modificaste.
3. Indica que comando debo ejecutar para probar.
4. Recomienda ejecutar flutter analyze.
```

## Prompt Para Revisar Un Sprint

```text
Lee AGENTS.md, ROADMAP.md, TODO.md, docs/REVIEW_CHECKLIST.md y los documentos relevantes dentro de docs/.

Revisa el sprint o modulo indicado.

No modifiques nada a menos que te lo autorice explicitamente.

Tareas:
- Revisar cambios realizados.
- Identificar errores, riesgos o inconsistencias.
- Verificar si el cambio respeta el alcance del sprint.
- Revisar si faltan tareas en TODO.md.
- Revisar si se debe actualizar documentacion.

Al finalizar:
1. Da un reporte claro.
2. Lista problemas encontrados por prioridad.
3. Indica archivos involucrados.
4. Indica comandos recomendados para verificar.
```

## Prompt Para Corregir Errores

```text
Lee AGENTS.md, ROADMAP.md, TODO.md y los documentos relevantes dentro de docs/.

Corrige el siguiente error:
[PEGAR ERROR EXACTO]

Reglas:
- Lee el error exacto antes de modificar.
- Corrige solo lo necesario.
- No refactorices toda la app.
- Manten cambios minimos.
- No agregues paquetes externos sin justificar.
- Manten la app compilable.

Al finalizar:
1. Explica la causa.
2. Explica la solucion.
3. Indica archivos modificados.
4. Ejecuta o recomienda flutter analyze.
```

## Prompt Para Crear Una Pantalla Nueva

```text
Lee AGENTS.md, ROADMAP.md, TODO.md, docs/UI_FLOW.md, docs/DESIGN_SYSTEM.md, docs/COMPONENT_LIBRARY.md y docs/ARCHITECTURE.md.

Crea la pantalla:
[NOMBRE DE PANTALLA]

Reglas:
- Usa componentes reutilizables existentes.
- No inventes estilos nuevos.
- Manten navegacion coherente con UI_FLOW.md.
- Usa colores y criterios visuales de Kalu.
- Actualiza TODO.md si corresponde.
- No conectes Supabase salvo que se solicite.
- No agregues paquetes externos.

Al finalizar:
1. Indica que hiciste.
2. Indica archivos creados o modificados.
3. Indica comando para probar.
4. Recomienda flutter analyze.
```

## Prompt Para Crear Un Componente Reutilizable

```text
Lee AGENTS.md, docs/DESIGN_SYSTEM.md, docs/COMPONENT_LIBRARY.md y docs/ARCHITECTURE.md.

Crea el componente reutilizable:
[NOMBRE DEL COMPONENTE]

Reglas:
- Crear el componente en shared/widgets.
- No duplicar componentes existentes.
- Respetar colores, radios, spacing y estilos de Kalu.
- Mantener API simple y clara.
- Usar const cuando sea posible.
- Documentar el nuevo componente en COMPONENT_LIBRARY.md si corresponde.

Al finalizar:
1. Indica que hiciste.
2. Indica archivos creados o modificados.
3. Indica comando para probar.
4. Recomienda flutter analyze.
```

## Prompt Para Mejorar UI

```text
Lee AGENTS.md, docs/DESIGN_SYSTEM.md, docs/COMPONENT_LIBRARY.md y docs/UI_FLOW.md.

Mejora visualmente solo esta pantalla:
[NOMBRE DE PANTALLA]

Reglas:
- Mejorar solo la pantalla solicitada.
- Mantener funcionalidad existente.
- Usar colores Kalu.
- Usar componentes reutilizables.
- Evitar cambios de arquitectura.
- No agregar paquetes externos.
- No modificar pantallas no relacionadas.

Al finalizar:
1. Indica que mejoraste.
2. Indica archivos modificados.
3. Indica comando para probar.
4. Recomienda flutter analyze.
```

## Prompt Para Crear Modelos Y Datos Mock

```text
Lee AGENTS.md, ROADMAP.md, TODO.md y docs/ARCHITECTURE.md.

Crea o actualiza los modelos y datos mock para:
[DESCRIBIR MODELOS/DATOS]

Reglas:
- Crear modelos en data/models.
- Crear datos mock en data/mock.
- No colocar datos directamente en pantallas.
- Preparar modelos para fromJson/toJson futuro si corresponde.
- Mantener IDs estables.
- No conectar Supabase.

Al finalizar:
1. Indica que hiciste.
2. Indica archivos creados o modificados.
3. Indica comando para probar.
4. Recomienda flutter analyze.
```

## Prompt Para Carrito

```text
Lee AGENTS.md, ROADMAP.md, TODO.md, docs/ARCHITECTURE.md, docs/COMPONENT_LIBRARY.md y docs/UI_FLOW.md.

Trabaja solo en el modulo Carrito:
[DESCRIBIR TAREA]

Reglas:
- Usar arquitectura documentada.
- Manejar productos agregados.
- Permitir cantidad, eliminar y total cuando aplique.
- Usar componentes reutilizables.
- No conectar Supabase.
- No hacer pagos en linea.
- Mantener V1 simple.

Al finalizar:
1. Indica que hiciste.
2. Indica archivos creados o modificados.
3. Indica comando para probar.
4. Recomienda flutter analyze.
```

## Prompt Para Checkout WhatsApp

```text
Lee AGENTS.md, ROADMAP.md, TODO.md, docs/ARCHITECTURE.md, docs/COMPONENT_LIBRARY.md y docs/UI_FLOW.md.

Trabaja solo en Checkout por WhatsApp:
[DESCRIBIR TAREA]

Reglas:
- Generar resumen del pedido.
- Pedir datos basicos del cliente.
- Crear mensaje ordenado para WhatsApp.
- No implementar pagos online.
- No conectar Supabase.
- Mantener V1 simple.

Al finalizar:
1. Indica que hiciste.
2. Indica archivos creados o modificados.
3. Indica comando para probar.
4. Recomienda flutter analyze.
```

## Prompt Para Busqueda

```text
Lee AGENTS.md, ROADMAP.md, TODO.md, docs/ARCHITECTURE.md, docs/COMPONENT_LIBRARY.md y docs/UI_FLOW.md.

Implementa o mejora la busqueda:
[DESCRIBIR TAREA]

Reglas:
- Buscar en datos mock.
- Mostrar resultados.
- Mostrar estado vacio.
- Permitir abrir detalle del producto.
- No conectar Supabase.
- No agregar login.
- No agregar paquetes externos.

Al finalizar:
1. Indica que hiciste.
2. Indica archivos creados o modificados.
3. Indica comando para probar.
4. Recomienda flutter analyze.
```

## Prompt Para Favoritos

```text
Lee AGENTS.md, ROADMAP.md, TODO.md, docs/ARCHITECTURE.md, docs/COMPONENT_LIBRARY.md y docs/UI_FLOW.md.

Implementa o mejora Favoritos:
[DESCRIBIR TAREA]

Reglas:
- Usar favoritos locales.
- Permitir agregar y quitar.
- Mostrar pantalla de favoritos.
- Permitir abrir detalle del producto.
- No conectar login todavia.
- No conectar Supabase.
- No agregar paquetes externos.

Al finalizar:
1. Indica que hiciste.
2. Indica archivos creados o modificados.
3. Indica comando para probar.
4. Recomienda flutter analyze.
```

## Prompt Para Supabase Futuro

```text
Lee AGENTS.md, ROADMAP.md, TODO.md, docs/BACKEND_SUPABASE.md, docs/ARCHITECTURE.md y docs/DECISIONS.md.

Trabaja solo en la integracion Supabase solicitada:
[DESCRIBIR TAREA]

Reglas:
- No usar claves privadas.
- No escribir service_role key.
- Usar services/repositories.
- Mantener modelos existentes.
- No mezclar consultas en widgets.
- No modificar RLS sin documentarlo.
- No avanzar a login o pedidos reales salvo que se solicite.

Al finalizar:
1. Indica que hiciste.
2. Indica archivos creados o modificados.
3. Indica comandos para probar.
4. Recomienda flutter analyze.
```

## Prompt Para Actualizar Documentacion

```text
Lee AGENTS.md, README.md, ROADMAP.md, TODO.md y los documentos relevantes dentro de docs/.

Actualiza solo este documento:
[RUTA DEL DOCUMENTO]

Objetivo:
[DESCRIBIR CAMBIO]

Reglas:
- Modificar solo el documento indicado.
- No tocar codigo.
- Mantener estilo claro.
- No duplicar informacion innecesaria.
- No inventar funcionalidades fuera del roadmap.
- No cambiar pubspec.yaml.

Al finalizar:
1. Indica que hiciste.
2. Indica que solo modificaste el documento indicado.
3. Recomienda revisar con git diff [RUTA DEL DOCUMENTO].
```

## Prompt Para Preparar Commit

```text
Lee AGENTS.md y docs/REVIEW_CHECKLIST.md.

Prepara un resumen para commit.

Reglas:
- Revisa git status.
- Revisa git diff.
- Resume cambios.
- Identifica archivos modificados.
- Recomienda mensaje de commit.
- No hagas commit automatico sin autorizacion si no se pidio.
- No hagas push sin autorizacion.

Al finalizar:
1. Muestra resumen de cambios.
2. Lista archivos modificados.
3. Sugiere mensaje de commit.
4. Indica si hay riesgos o pendientes.
```

## Prompt Para Refactor

```text
Lee AGENTS.md, docs/ARCHITECTURE.md, docs/COMPONENT_LIBRARY.md y docs/REVIEW_CHECKLIST.md.

Refactoriza solo esta area:
[ARCHIVO/MODULO]

Reglas:
- Refactorizar solo el area indicada.
- No cambiar comportamiento.
- No modificar diseno sin permiso.
- No agregar paquetes externos.
- Mantener tests/analyze funcionando.
- Mantener cambios pequenos y verificables.

Al finalizar:
1. Explica que refactorizaste.
2. Indica archivos modificados.
3. Indica como verificar.
4. Recomienda flutter analyze.
```

## Prompt Para Generar APK

```text
Lee AGENTS.md, README.md y docs/REVIEW_CHECKLIST.md.

Prepara build APK Android.

Reglas:
- Revisa flutter analyze.
- Construye APK Android.
- Indica ruta del APK generado.
- No modificar funcionalidades.
- No agregar paquetes externos.

Comandos sugeridos:
- flutter analyze
- flutter build apk

Al finalizar:
1. Indica si el build fue exitoso.
2. Indica ruta del APK.
3. Indica cualquier advertencia relevante.
```

## Ejemplos De Uso Rapido

- "Usa el prompt de crear pantalla nueva para construir Favoritos."
- "Usa el prompt de corregir errores con este mensaje: ..."
- "Usa el prompt de revision de sprint."
- "Usa el prompt de checkout WhatsApp."
- "Usa el prompt de preparar commit."

## Reglas Para Codex

Codex debe:

- Consultar este documento cuando se solicite una tarea.
- No interpretar un prompt como permiso para hacer mas de lo solicitado.
- Mantener cambios pequenos.
- Respetar `AGENTS.md`.
- Respetar `REVIEW_CHECKLIST.md`.
- Respetar el sprint, modulo o documento indicado por el usuario.
- Reportar claramente archivos creados o modificados.

## Conclusion

`PROMPTS.md` reduce el gasto de tokens, mejora la claridad de tareas y permite trabajar con Codex de forma profesional. Su uso ayuda a mantener Kalu App ordenada, compilable y alineada con el roadmap, la arquitectura, el sistema de diseno y las decisiones del proyecto.
