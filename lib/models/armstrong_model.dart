class ArmstrongModel {
  int number;
  ArmstrongModel({required this.number});

  bool isArmstrong() {
    int sum = 0;
    int temp = number;
    while (temp > 0) {
      int digit = temp % 10;
      sum += digit * digit * digit;
      temp ~/= 10;
    }
    return sum == number;
  }
}
