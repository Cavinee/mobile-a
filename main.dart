// Untuk menggambarkan kegunaan dari access modifier private, maka file untuk class Motorcycle dipisah sendiri
import 'Motorcycle.dart';

/*
Perbedan dari public dan private:
- Access modifier public berarti atribut tersebut bisa diakses dari mana saja ketika objeknya dibuat
- Access modifier private berarti atribut tersebut hanya bisa diakses dari dalam class tersebut ketika objeknya dibuat (hanya bisa digunakan oleh method)
*/

/*
Perbedaan dari Class dan Object:
- Class sendiri bisa dianggap sebagai sebuah blueprint atau gambaran umum tentang suatu Object (seperti sebuah Class Car menggambarkan tentang apa saja atribut yang dimiliki mobil, serta apa saja yang bisa dilakukannya (method))
- Object sendiri merupakan sebuah objek yang kita bisa lihat di dunia nyata, merupakan perwujudan asli dari Class.

Bisa dianggap bahwa ketika di dunia nyata, Class itu kita tidak dapat "lihat" secara langsung (seperti Class Car, kita tidak pernah melihat mobil panggilannya hanya "Car", pasti ada sebutannya seperti Calya)
Sedangkan Object kita bisa lihat secara langsung.
*/

// Contoh sebuah class, yaitu class Car (anggap sebagai sebuah blueprint untuk membuat objek mobil)
class Car {
  // Atribut yang dimiliki oleh class Car, memiliki access modifier public karena nama dari atribut tidak diawali oleh '_'
  late String name;
  late int door;
  late double maxSpeed;

  // Constructor, sebagai cara cepat untuk membuat objek, dan set value dari atribut-atribut objek tersebut
  Car(this.name, this.door, this.maxSpeed);

  // Method, fungsi yang dapat dijalankan oleh objek ketika dibuat
  void startEngine() {
    print("Starting ${this.name}...");
    print("Engine Started!");
  }
}

void main() {
  // Class & Object
  Car myCar = Car("Calya", 4, 60.0);
  myCar.name = "Calya";
  myCar.door = 4;
  myCar.maxSpeed = 60.0;

  myCar.startEngine();

  Motorcycle myMotorcycle = Motorcycle("Mio", 80.0);
  myMotorcycle.startEngine();

  myMotorcycle.setName("N-Max");
  print(myMotorcycle.getName());

  /*
  Perbedaan utama dari List, Set, dan Map
  Segi Kegunaan
  - List sendiri hanya menyimpan kumpulan value yang memiliki tipe data yang sama, dan value tersebut bisa berulang
  - Set sendiri hanya menyimpan kumpulan value yang memiliki tipe data yang sama, tetapi nilai yang disimpan hanya boleh nilai unik
  - Map sendiri menyimpan pair antara key dan juga value. Key dianggap sebagai "index" dari map untuk mengakses valuenya. Key dan value bisa memiliki tipe data yang sama, ataupun berbeda

  List dan Map sendiri bisa diakses menggunakan "index" 
  - List menggunakan [index], di mana index akan dimulai dari 0 untuk anggota pertama dan n - 1 (n itu jumlah elemen di List) untuk anggota terakhir
  - Map menggunakan [key], di mana key berupa pairingan yang diset (seperti "David": "08123456789", maka keynya itu "David" dan valuenya itu "08123456789")

  Set perlu diakses menggunakan for loop atau for-each

  Segi "Visual"
  - List sendiri ketika diinisialisasi menggunakan kurung kotak []
  - Set dan Map diinisialisasi menggunakan kurung curly {}

  - List dan Set hanya bisa menyimpan satu tipe data (dapat dilihat dari kurung lancip atau panah, List dan Set hanya menyimpan 1 tipe data)
  - Map menyimpan 2 tipe data, bisa sama ataupun beda (dapat dilihat dari kurung lancip atau panah, Map menyimpan 2 tipe data)
  */

  // List
  List<String> names = [];
  names.add("David");
  names.add("David");

  names[0] = "Test";

  names.remove("Test");

  for (String name in names) {
    print(name);
  }

  // Set
  Set<String> uniqueNames = {};
  uniqueNames.add("David");
  uniqueNames.add("Test");

  uniqueNames.remove("David");

  for (String name in uniqueNames) {
    print(name);
  }

  print(uniqueNames.length);

  // Map
  Map<String, String> addressBook = {};
  addressBook["David"] = "Alam Sutera";

  Map<String, String> newAddressBook = {"Scholes": "Gading Serpong"};
  addressBook.addEntries(newAddressBook.entries);

  addressBook.remove("David");

  for (String key in addressBook.keys) {
    print("Key: ${key} Value: ${addressBook[key]}");
  }

}