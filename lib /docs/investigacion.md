#investigacion:programacion orientada a objetos en dart

## 1. sobreescritura de metodos(@override)
### ¿Qué es?
La sobreescritura permite que una clase hija modifique el comportamiento de un método heredado de la clase padre.

### ¿Para qué sirve?
Sirve para adaptar el comportamiento de una clase hija según sus necesidades.

### Uso de @override en Dart

dart
class Animal {
  void hacerSonido() {
    print("Sonido genérico");
  }
}

class Perro extends Animal {
  @override
  void hacerSonido() {
    print("Guau");
  }
}


## 2. Polimorfismo

### Concepto
El polimorfismo permite usar objetos de distintas clases mediante una referencia de la clase padre.

### Ejemplo

dart
class Animal {
  void hacerSonido() {
    print("Sonido");
  }
}

class Perro extends Animal {
  @override
  void hacerSonido() {
    print("Guau");
  }
}

class Gato extends Animal {
  @override
  void hacerSonido() {
    print("Miau");
  }
}

void main() {
  List<Animal> animales = [Perro(), Gato()];

  for (var animal in animales) {
    animal.hacerSonido();
  }
}


### Casting en Dart

#### Operador is
Verifica el tipo de un objeto.

dart
if (animal is Perro) {
  print("Es un perro");
}


#### Operador as
Convierte un objeto a un tipo específico.

dart
Perro perro = animal as Perro;


## 3. Parámetros en Dart

### Parámetros Posicionales

dart
void saludar(String nombre) {
  print("Hola $nombre");
}


### Parámetros Nombrados

dart
void registrar({required String nombre, required int edad}) {
  print("$nombre tiene $edad años");
}


### Parámetros Opcionales

dart
void mostrar(String nombre, [int? edad]) {
  print("$nombre $edad");
}


### Diferencias

- Los parámetros posicionales se envían en orden.
- Los parámetros nombrados se identifican por su nombre.
- Los parámetros opcionales no son obligatorios.

- Los parámetros posicionales se envían en orden.
- Los parámetros nombrados se identifican por su nombre.
- Los parámetros opcionales no son obligatorios.
