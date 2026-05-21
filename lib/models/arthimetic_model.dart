class ArthimeticModel {
  // Properties
  final double first;
  final double second;

  ArthimeticModel({required this.first, required this.second});

  // Behaviors
  double add() {
    return first + second;
  }

  double sub() {
    return first - second;
  }

  double mul() {
    return first * second;
  }

  double div() {
    return first / second;
  }
}
