# efood

## Autora

- [Ángela Izquierdo García](https://github.com/angelaig-ugr)

## Descripción

> Proyecto para la asignatura de Infraestructura Virtual 

API web para consultar los distintos productos que hay en un supermercado, permitiendo hacer comparativas de precio y valores nutricionales con respecto al mismo producto en otro supermercado y productos de la misma categoría ( ejemplo : comparar galletas ) . Además permite señalar la lista de alérgenos y si es apto para celíacos , intolerantes a la lactosa , vegetarianos o veganos .

## Herramientas

- Lenguaje: Raku 

## Planteamientos sobre el proyecto
En mi proyecto , el elemento principal es el [producto a consultar](https://github.com/angelaig-ugr/efood/blob/master/src/product.raku) . Este producto tendrá una serie de atributos que me ayudará a conseguir mis objetivos, que el cliente pueda elegir el supermercado o producto que más le convenga a su bolsillo o salud ,  poder localizar si en tal supermercado existe dicho producto,etc .

Considerando los requerimientos de mi proyecto y sus características ,creo que  más adelante seguramente deba hacer uso de una **base de datos** para poder realizar los servicios y proporcionar la información que el cliente requiere . Servirá como almacenamiento y también 

Además , ·efood" también realizará **operaciones de cálculo** como son el cálculo del precio/kg de un producto ( para poder comparar más fácilmente los precios ), el cálculo del aporte de proteínas / kcal . etc . Por ello, no descarto implementar algunas partes del proyecto en otros lenguajes si así lo requiriese.

## [Documentación](https://github.com/angelaig-ugr/efood/tree/master/docs)

## Historial de issues y milestones 
- [Issues](https://github.com/angelaig-ugr/efood/issues)
- [Milestones](https://github.com/angelaig-ugr/efood/milestones)

## Historias de usuario 
- [HU1](https://github.com/angelaig-ugr/efood/issues/11)
- [HU2](https://github.com/angelaig-ugr/efood/issues/3)
- [HU3](https://github.com/angelaig-ugr/efood/issues/18)

## Fichero iv.yaml
- [iv.yaml](https://github.com/angelaig-ugr/efood/blob/master/iv.yaml)


### Subenlaces
- [Configuración inicial ](docs/git.md)
- [Motivos para usar Raku](docs/herramientas.md)
- [Documentación sobre Raku](https://github.com/Raku/Documentable)




