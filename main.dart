class Item {
  late String name;
  late int price;

  Item(this.name, this.price);

  void printDetails() {
    print("Name: ${this.name} Price: ${this.price}");
  }
}

/*
4 Pillars of Object Oriented Programming (OOP):
1. Encapsulation = membungkus attribut dan method ke dalam 1 "kapsul" yaitu class untuk merahasiakan data dan mencegah akses yang tidak diinginkan (seperti melihat atau mengubah data).
Dapat dicapai dengan mengggunakan access modifier, seperti private ('_') dan public

Jika sebuah data diberikan private access modifier, maka untuk melihat dan mengubah data tersebut perlu dibuat method khusus, yaitu getter untuk melihat dan setter untuk mengubah data 

2. Inheritance = mewariskan sifat atau ciri khas (atribut dan method) dari parent class (super class) ke child class (sub class) agar code kalian bisa menjadi reusable dan lebih modular
Dapat dicapai dengan menggunakan keyword extends

3. Polymorphism = bagaimana sebuah object bisa bersifat layaknya class-class lain (seperti bagaimana kita manusia bisa "berubah bentuk" menjadi mahasiswa, anak, orang tua, dan lain-lain) sehingga code kalian bisa menjadi lebih fleksibel
Dapat dicapai dengan menggunakan method overriding (override method dari interface yang diimplementasikan ataupun method dari parent class)

4. Abstraction = menyembunyikan detail implementasi dari program kalian, hanya menampilkan detail implementasi yang diperlukan oleh user sehingga user bisa berfokus kepada implementasi yang penting bagi program kita yang complex dapat dimengerti oleh pengguna kita
Dapat dicapai dengan menggunakan keyword abstract pada sebuah class untuk membuat abstract class ataupun bisa dengan membuat abstract method (method yang belum ada implementasinya)

Jika abstract method dimiliki oleh class normal (bukan abstract), maka method tersebut harus di override (method overriding) di mana implementasi dari method tersebut harus ditambahkan

Bonus information:
Pada Dart, inheritance hanya bisa dilakukan sekali saja karena bisa terjadi tabrakan antara data yang diturunkan.

Alternatif dari multiple inheritance adalah kita bisa menggunakan interface untuk melakukan mulitple implementation dari berbagai interface

Perbedaan dari interface dan class normal untuk inheritance adalah:
- Inheritance hanya boleh sekali sedangkan implementation bisa berulang-ulang
- Inheritance menggunakan keyword extends implementation menggunakan keyword implements
*/

// Inheritance: pewarisan sifat dari parent class ke sub class, dapat dilihat dari keyword extends
// Polymorphism: object bisa memiliki banyak bentuk, dapat dilihat dari implementasi @override, di mana dilakukan method overriding
class Food extends Item {
  bool isDessert;

  Food(super.name, super.price, this.isDessert);
  // Food(name, price) : super(name, price);

  @override
  void printDetails() {
    if (isDessert) {
      print("Dessert Name: ${this.name} Dessert Price: ${this.price}");
    } else {
      print("Dish Name: ${this.name} Dish Price: ${this.price}");
    }
  }
}

// Inheritance: pewarisan sifat dari parent class ke sub class, dapat dilihat dari keyword extends
// Polymorphism: object bisa memiliki banyak bentuk, dapat dilihat dari implementasi @override, di mana dilakukan method overriding
class Drink extends Item {
  bool isCarbonated;

  Drink(super.name, super.price, this.isCarbonated);

  @override
  void printDetails() {
    if (isCarbonated) {
      print("Carbonated Beverage Name: ${this.name} Carbonated Beverage Price: ${this.price}");
    } else {
      print("Beverage Name: ${this.name} Beverage Price: ${this.price}");
    }
  }
}

// Abstraction: menyembunyikan detail implementasi, dapat dilihat dari keyword abstract yang digunakan serta abstract method di mana implementasinya tidak dinyatakan
abstract class Payment {
  void pay(int amount);
}

// Inheritance: pewarisan sifat dari parent class ke sub class, dapat dilihat dari keyword extends
// Polymorphism: object bisa memiliki banyak bentuk, dapat dilihat dari implementasi @override, di mana dilakukan method overriding serta dari generalisasi di mana Food dan Drink disimpan ke dalam 1 list yang sama dengan tipe data Item
// Encapsulation: menyembunyikan data penting dengan private access modifier (atribut _hasPaid di mana '_' ditambahkan ke awal nama atributnya), untuk mengakses dan mengubah atribut hasPaid, dibuat getter (getPaid) dan juga setter (pay)
// Abstraction: menyembunyikan detail implementasi, di mana pada class Customer baru implementasi method pay dinyatakan
class Customer extends Payment {
  String name;
  bool _hasPaid;
  List<Item> order;

  Customer(this.name, this._hasPaid, this.order);

  void getPaid() {
    if (_hasPaid) {
      print("The customer has paid their bill");
    } else {
      print("The customer hasn't paid their bill.");
    }
  }

  void addOrder(Item item) {
    order.add(item);
  }

  void printOrder() {
    for (Item item in order) {
      print("${item.name} = ${item.price}");
    }
  }

  void pay(int amount) {
    int totalPrice = 0;

    for (Item item in order) {
      totalPrice += item.price;
    }

    if (amount >= totalPrice) {
      print("Returned ${amount - totalPrice}.");
      _hasPaid = true;
    } else if (amount < totalPrice) {
      print("Paid amount is insufficient.");
    }
  }
}

void main() {
  Food iceCream = Food("Ice Cream", 35000, true);
  Food friedRice = Food("Fried Rice", 40000, false);
  Drink coke = Drink("Coke", 10000, true);
  Drink milk = Drink("Milk", 7500, false);
  iceCream.printDetails();
  friedRice.printDetails();
  coke.printDetails();
  milk.printDetails();

  Customer newCustomer = Customer("Jacob", false, []);
  newCustomer.addOrder(iceCream);
  newCustomer.addOrder(friedRice);
  newCustomer.addOrder(coke);
  newCustomer.addOrder(milk);
  newCustomer.printOrder();
  newCustomer.pay(100000);
  newCustomer.getPaid();
}