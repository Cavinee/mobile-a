// Contoh sebuah class, yaitu class Motorcycle (anggap sebagai sebuah blueprint untuk membuat objek motor)
class Motorcycle {
  // Atribut yang dimiliki oleh class Motorcycle, memiliki access modifier private karena nama dari atribut diawali oleh '_'
  late String _name;
  late double maxSpeed;

  // Constructor, sebagai cara cepat untuk membuat objek, dan set value dari atribut-atribut objek tersebut
  Motorcycle(this._name, this.maxSpeed);

  // Method, fungsi yang dapat dijalankan oleh objek ketika dibuat

  // Getter, fungsi untuk return value dari atribut tertentu. Pada kasus ini untuk return value dari atribut _name
  String getName() {
    return this._name;
  }

  // Setter, fungsi untuk set atribut tertentu ke sebuah value baru (valuenya dari parameter). Pada kasus ini untuk set atribut _name ke value baru.
  void setName(String name) {
    _name = name;
  }

  void startEngine() {
    print("Starting ${this._name}...");
    print("Engine Started!");
  }
}