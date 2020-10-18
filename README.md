# efood

## Autora

- [Ángela Izquierdo García](https://github.com/angelaig-ugr)

## Descripción

> Proyecto para la asignatura de Infraestructura Virtual 

API web para consultar los distintos productos que hay en un supermercado, permitiendo hacer comparativas de precio y valores nutricionales con respecto al mismo producto en otro supermercado y productos de la misma categoría ( ejemplo : comparar galletas ) . Además permite señalar la lista de alérgenos y si es apto para celíacos , intolerantes a la lactosa , vegetarianos o veganos .


## Planteamientos sobre el proyecto

En mi proyecto , el elemento principal es el [producto a consultar](https://github.com/angelaig-ugr/efood/blob/master/src/product.raku) . Este producto tendrá una serie de atributos que me ayudará a conseguir mis objetivos, que el cliente pueda elegir el supermercado o producto que más le convenga a su bolsillo o salud ,  poder localizar si en tal supermercado existe dicho producto,etc .

Considerando los requerimientos de mi proyecto y sus características ,creo que  más adelante seguramente deba hacer uso de una **base de datos** para poder realizar los servicios y proporcionar la información que el cliente requiere . Servirá como almacenamiento y también 

Además , "efood" también realizará **operaciones de cálculo** como son el cálculo del precio/kg de un producto ( para poder comparar más fácilmente los precios ), el cálculo del aporte de proteínas / kcal . etc . Por ello, no descarto implementar algunas partes del proyecto en otros lenguajes si así lo requiriese.

## Herramientas

- Lenguaje: Raku 
- Bases de datos a emplear : a determinar
- [Documentación ](https://github.com/angelaig-ugr/efood/edit/master/docs/herramientas.md)


## Historial de issues y milestones 
- [Issues](https://github.com/angelaig-ugr/efood/issues)
- [Milestones](https://github.com/angelaig-ugr/efood/milestones)

## Historias de usuario 
- [HU1](https://github.com/angelaig-ugr/efood/issues/11)
- [HU2](https://github.com/angelaig-ugr/efood/issues/3)
- [HU3](https://github.com/angelaig-ugr/efood/issues/18)

## Fichero iv.yaml
- [iv.yaml](https://github.com/angelaig-ugr/efood/blob/master/iv.yaml)

## Ficheros test
 En el siguiente fichero , he incluido diversos test a mi clase "Producto" , la principal sobre la que se basa mi aplicación .
 Dichos test , consisten en comprobar que dicha clase funciona adecuadamente, que es posible instanciar objetos de esta clase , y también
 como en un futuro se pretende , consultar nombre y atributos, crear objetos con ciertos atributos iniciales, cambiar algún atributo , etc .
 
- [test clase producto](https://github.com/angelaig-ugr/efood/blob/master/t/test.t)



## Herramientas zef y ake
- [Documentación ](https://github.com/angelaig-ugr/efood/edit/master/docs/herramientas.md)



## Instalación y ejecución 
Para poder instalar , testear y ejecutar el código de este repositorio , debemos seguir los siguientes pasos :
- Instalar rakudo
- Ejecutar el Akefile 


#### Instalación de rakudo (incluye zef) 
```
$ sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 379CE192D401AB61
$ echo "deb https://dl.bintray.com/nxadm/rakudo-pkg-debs `lsb_release -cs` main" | sudo tee -a /etc/apt/sources.list.d/rakudo-pkg.list
$ sudo apt-get update && sudo apt-get install rakudo-pkg
```

- En la terminal de trabajo introducir este comando : (variable de entorno para que funcione raku)
```
PATH=~/.raku/bin:/opt/rakudo-pkg/bin:/opt/rakudo-pkg/share/perl6/site/bin:$PATH

```

#### Ejecución del Akefile

- Instalar rake 

	```
	zef install rake 
	
	```
- Para instalar módulos y testear el código 
	```
	$ ake all

	```
Si visualizamos el archivo Akefile veremos que hay otras órdenes , la orden "all" se encarga de ejecutar todas las órdenes restantes del fichero.

### Subenlaces
- [Configuración inicial ](docs/git.md)
- [Motivos para usar Raku](docs/herramientas.md)
- [Documentación sobre Raku](https://github.com/Raku/Documentable)




