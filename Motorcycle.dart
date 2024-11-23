
class Motorcycle {
  late String _name;
  late double maxSpeed;

  Motorcycle(this._name, this.maxSpeed);

  String getName() {
    return this._name;
  }

  void setName(String name) {
    _name = name;
  }

  void startEngine() {
    print("Starting ${this._name}...");
    print("Engine Started!");
  }
}