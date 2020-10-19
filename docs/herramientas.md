
## Lenguaje de programación 
He decidido utilizar Raku ya que es uno de los lenguajes de programación que no conozco y de los que se ha recomendado en la asignatura, que además puede servir para facilitar el aprendizaje de otros lenguajes . Antes de ello, comencé parte en Javascript pero decidí cambiar para contribuir a la originalidad de mi proyecto.

## Zef
En raku, encontramos zef , es un gestor de dependencias , una herramienta de construcción que permite manejar los módulos, instalarlos , etc , así como un front-end para un framework de test. Para ejecutar los test , tenemos otras opciones como **prove6**, si bien como estoy trabajando con módulos , he elegido zef.

## Akefile
Además , para automatizar las tareas, he escogido "ake" como gestor de tareas , que es un módulo externo al lenguaje Raku.Cualquier tarea que queramos automatizar se incluye dentro del archivo "Akefile" .
Este archivo es prácticamente como un Makefile, con el que estamos ya familiarizados, pero usa Raku para expresarse, por lo que me ha parecido bastante práctico elegirlo .

## Test
He usado **Test** como biblioteca de aserciones , ya que nos proporciona un framework de tes en el que  prácticamente todas las comprobaciones que debo hacer en mi clase para testearla están implementadas , contando con un gran número de funciones .
