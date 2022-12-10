class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;

  int get speed => _speed;

  //constructor for this class
  Bicycle(this.cadence, this.gear);

  @override
  String toString() => 'Bicycle: $speed mph';

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}

void main() {
  var bike = Bicycle(2, 1);
  print(bike);

  bike.speedUp(20);
  print(bike);

  bike.applyBrake(19);
  print(bike);
  print(bike.speed);
}
