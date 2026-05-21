class SimpleInterestModel {
  // Properties
  late final double principle;
  late final double time;
  late final double rate;

  SimpleInterestModel({
    required this.principle,
    required this.time,
    required this.rate,
  });

  // Behaviors
  double simpleinterst() {
    return (principle * time * rate) / 100;
  }
}
