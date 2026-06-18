#analisis del codigo
## 1. ¿Qué hace cada clase y por qué fue diseñada así?

La clase Animal es la clase padre y contiene el método hacerSonido(). Fue diseñada para representar características comunes de los animales.

La clase Perro hereda de Animal y sobrescribe el método hacerSonido() para emitir un sonido específico. También tiene el método correr().

La clase Gato hereda de Animal y sobrescribe el método hacerSonido() para emitir un sonido diferente. Además tiene el método datos() para mostrar información usando parámetros nombrados.

## 2. ¿Qué pasaría si eliminas @override?

El método seguiría funcionando si tiene la misma firma, pero perderíamos la verificación que realiza Dart para asegurarse de que realmente estamos sobrescribiendo un método heredado. El código sería menos claro y más propenso a errores.

## 3. Explica en tus palabras cómo funciona el polimorfismo en tu código.

El polimorfismo ocurre cuando una variable de tipo Animal puede almacenar objetos de tipo Perro o Gato. Al llamar hacerSonido(), cada objeto ejecuta su propia versión del método.

## 4. ¿Dónde aplicaste casting y por qué fue necesario?

Se aplicó usando los operadores is y as:

dart
if (animal is Perro) {
  Perro perro = animal as Perro;
}


Fue necesario para convertir una referencia de tipo Animal en una referencia de tipo Perro y poder acceder a métodos específicos de esa clase.

## 5. ¿Qué diferencia real viste entre parámetros nombrados y posicionales?

Los parámetros posicionales dependen del orden en que se envían los valores.

Los parámetros nombrados permiten indicar el nombre de cada parámetro, haciendo el código más fácil de leer y evitando errores.

## 6. Modificación del código

Se modificó el comportamiento de la clase Gato cambiando el mensaje del método hacerSonido().

Antes:
dart
print("Miau");


Después:
dart
print("Miau Miau");


Al ejecutar nuevamente el programa, el comportamiento cambió únicamente para los objet
