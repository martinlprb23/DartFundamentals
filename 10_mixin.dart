abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin class Volador {
  void volar() => print('Volando');
}

mixin class Caminante {
  void caminar() => print('Caminando');
}

mixin class Nadador {
  void nadar() => print('Nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  print("Flipper");
  final flipper = Delfin();
  flipper.nadar();

  print("Batman");
  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  print("namor");
  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
}
