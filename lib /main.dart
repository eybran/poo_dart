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

  void correr(int velocidad) {
    print("El perro corre a $velocidad km/h");
  }
}

class Gato extends Animal {
  @override
  void hacerSonido() {
    print("Miau");
  }

  void datos({required String nombre, required int edad}) {
    print("Gato: $nombre, Edad: $edad");
  }
}

void main() {
  // Polimorfismo
  List<Animal> animales = [
    Perro(),
    Gato(),
  ];

  for (var animal in animales) {
    animal.hacerSonido();
  }

  // Uso de is y as
  Animal animal = Perro();

  if (animal is Perro) {
    Perro perro = animal as Perro;
    perro.correr(20);
  }

  // Parámetros nombrados
   Gato gato = Gato();
  gato.datos(nombre: "Michi", edad: 3);
}
  Gato gato = Gato();
  gato.datos(nombre: "Michi", edad: 3);
}
