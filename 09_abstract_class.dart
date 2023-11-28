void main() {
  final windPlan = WindPlant(initialEnergy: 100);
  final nuclearPlan = NuclearPlant(energyLeft: 1000);

  print('Wind: ${chargePhone(windPlan)}');
  print('Nuclear: ${chargePhone(nuclearPlan)}');
}

double chargePhone(EnergyPlan plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlan {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlan({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
  //{
  //throw UnimplementedError();
  //}
}

// extends o implements
class WindPlant extends EnergyPlan {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlan {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
