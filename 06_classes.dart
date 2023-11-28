void main() {
  //final wolverine = Hero('Logan', 'Regeneración');

  final Hero wolverine = Hero(name: 'Logan');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin poder'});

  //Hero(this.name, this.power);

  //Hero(String pName, String pPower)
  //: name = pName, power = pPower;

  @override
  String toString() {
    return '$name - $power';
  }
}
