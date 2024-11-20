// Contoh sebuah function, yaitu function main. Diawali dengan data type yang direturn (kalau di contoh itu void karena tidak return apa apa) kemudian diikuti dengan nama functionnya
// Biasanya (selain function main) function itu digunakan ketika kita memiliki sebuah code yang ingin kita panggil secara berulang (contoh: swap element)

void swap (int a, int b) {
  int temp = a;
  a = b;
  b = temp;

  print("a = ${a} b = ${b}");
}

// Enum, biasanya digunakan untuk variable yang bersifat constant untuk memperkecil kemungkinan untuk terjadinya error (seperti typo) dan meningkatkan readability
enum TrafficLight {
  red, yellow, green;
}

void main() {
  // Untuk menampilkan ke console, gunakan function print
  print("Function Print");
  print("Hello World");

  // Comment

  /* 
  Multiline
  Comment
  */

  // var data type = ketika kosong, bersifat seperti dynamic. Ketika telah diset (diset di baris setelah baris deklarasi), data type akan berubah sesuai dengan apa yang kita set (set ke angka bulat, data type jadi int)
  var varAge = 123;
  print(varAge);

  /*
  Data type dynamic membiarkan kita untuk assign variable tanpa peduli dengan data type
  */
  dynamic age = 123;
  age = "Rich";
  print("Dynamic variable: ${age}");

  /*
  late modifier digunakan ketika kita memerlukan sebuah variabel yang:
  1. kita declare sebelum diassign valuenya
  2. sebelum kita gunakan, kita bakalan assign valuenya terlebih dahulu
  3. value yang kita assign bukan null
  */
  late int lateAge;
  lateAge = 123;
  print("Variable dengan late modifier: ${lateAge}");

  /*
  sebuah datatype yang diikutin dengan ?, berarti bisa diassign dengan value null atau bisa dikosongkan
  */
  int? nullableAge;
  print("Nullable variable: ${nullableAge}");

  /*
  const dan final modifier membiarkan sebuah value untuk tidak bisa diubah valuenya
  
  perbedaan antara const dan final adalah:
  - const itu pasti harus diassign ketika kalian declare, setelah declare (dan assign) tidak bisa diubah valuenya
  - final tidak harus langsung diassign ketika kalian declare, tetapi setelah kalian assign valuenya, valuenya tidak bisa diubah

  const biasa digunakan jika kalian perlukan variablenya itu tidak bisa diubah dan diassign value sebelum dijalankan programnya
  final biasa digunakan jika kalian perlukan variablenya itu tidak bisa diubah dan belum ditahu valuenya (ditahu setelah programnya jalan)
  */
  const double pi = 3.14;
  print("Const: ${pi}");

  final double e;
  e = 2.71828;
  print("Final: ${e}");

  // Numbers, data type yang berurusan dengan angka
  int integer = 10; // int = menyimpan angka bulat
  double decimal = 10.0; // double = menyimpan angka desimal
  print("Integer: ${integer}");
  print("Decimal: ${decimal}");

  // Strings. data type yang menyimpan kumpulan karakter (bisa berupa huruf, symbol, angka, hingga emoji)
  String string = "Hello World";
  print("String: ${string}");

  // Boolean, data type yang menyimpan value antara true atau false
  print("1 > 2 = ${1 > 2}"); // false
  print("1 < 2 = ${1 < 2}"); // true

  // Dalam Dart, array itu List, di mana dia menyimpan kumpulan data. Cara mengaksesnya yaitu menggunakan index (dimulai dari 0)
  List<int> array = [1, 2, 3];
  print(array[0]);

  // Penggunaan foreach untuk mengeprint list
  print("Print List with foreach");
  for (int val in array) {
    print(val);
  }

  // Bisa juga menggunakan for loop biasa. Fungsi length digunakan untuk mengetahui seberapa banyak element dalam list
  print("Print List with normal for loop");
  for (int i = 0; i < array.length; i++) {
    print(array[i]);
  }

  // Set merupakan sebuah array yang tidak menyimpan value duplikat.
  Set<int> set = Set();
  set.add(1);
  set.add(2);
  set.add(3);
  set.add(1);

  print("Print Set");
  for (int val in set) {
    print(val);
  }

  /*
  Map menyimpan element dalam bentuk pairing antara key dan value (bisa datatype berbeda)
  Contoh pairing:
  key = value
  "Rich" = 82112345678,
  */
  Map<String, int> phone = Map();
  phone["Rich"] = 82112345678;

  print("Print Map (keys and values)");
  for (String name in phone.keys) {
    print("${name} = ${phone[name]}");
  }

  /*
  Record digunakan ketika ingin menyimpan kumpulan data yang memiliki data type berbeda.
  Tetapi, Record bersifat immutable atau tidak dapat diubah sehingga ketika ngedeclare, udah harus di assign value dan value itu tidak dapat diubah lagi (mirip const)
  */
  var record = (1, "Rich", 0.1);

  // Cara mengeprint Record (variableRecord.${index})
  print(record.$1);
  print(record.$2);
  print(record.$3);

  // Implementasi Enum pakai switch
  TrafficLight currentCondition = TrafficLight.red;
  print("Implementasi Enum:");
  switch(currentCondition) {
    case TrafficLight.red:
      print("Stop!");
      break;
    case TrafficLight.yellow:
      print("Slow down!");
      break;
    case TrafficLight.green:
      print("Go!");
      break;
  }
  
  /*
  Operator aritmetika
  + untuk tambah
  - untuk kurang
  * untuk kali
  / untuk bagi (pembagian normal yang bisa menghasilkan desimal)
  % untuk modulo
  
  kalau misalnya kalian butuhkan pembagian yang menghasilkan angka bulat (integer), kalian bisa gunakan ~/
  */
  int a = 1, b = 2;
  print("+ operator: ${a + b}");
  print("- operator: ${a - b}");
  print("* operator: ${a * b}");
  print("/ operator: ${a / b}");
  print("~/ operator: ${a ~/ b}");
  print("% operator: ${a ~/ b}"); 

  /*
  Operator perbandingan
  == untuk mengecek apakah value antara 2 variabel sama, jika iya menghasilkan true
  != untuk mengecek apakah value antara 2 variabel tidak sama, jika iya menghasilkan true
  < untuk mengecek apakah variabel di kiri lebih kecil dari variabel kanan, jika iya menghasilkan true
  <= untuk mengecek apakah variabel di kiri lebih kecil atau sama dengan dari variabel kanan, jika iya menghasilkan true
  > untuk mengecek apakah variabel di kiri lebih besar dari variabel kanan, jika iya menghasilkan true
  >= untuk mengecek apakah variabel di kiri lebih besar atau sama dengan dari variabel kanan, jika iya menghasilkan true
  */
  print("== operator: ${a == b}");
  print("!= operator: ${a != b}");
  print("< operator: ${a < b}");
  print("<= operator: ${a <= b}");
  print("> operator: ${a > b}");
  print(">- operator: ${a >= b}");

  a = 1;
  b = 2;
  /*
  Operator Bitwise
  1 = 0001
  2 = 0010
  AND operation = 0000 = 0
  OR operation = 0011 = 3
  XOR operation = 0011 = 3
  // << 1 = 0001 -> 0010 = 2
  // >> 1 = 0001 -> 0000 = 0
  & = melakukan bitwise AND operation
  | = melakukan bitwise OR operation
  ^ = melakukan bitwise XOR operation
  ~ = melakukan bitwise NOT operation
  << x = shift bits dari variable sebanyak x ke kiri
  >> x = shift bits dari variable sebanyak x ke kanan
  */
  print("& operator: ${a & b}");
  print("| operator: ${a | b}");
  print("^ operator: ${a ^ b}");
  print("<< operator: ${a << 1}");
  print(">> operator: ${b >> 1}");

  // Null operator (??=): Jika sebuah variable nilainya null, maka dia akan set variable tersebut dengan sebuah nilai
  int? c;
  c ??= 3;
  print("??= operator: ${c}");

  // Ternary operator (shorthand if atau if versi singkat)
  int value = a > b ? a : b;
  print("Ternary operator: ${value}");
  // Jika a > b, maka value diset ke a, jika tidak maka value diset ke b

  // Repetition menggunakan while
  print("Repetition with While");
  while (a < b) {
    print(a);
    a++;
  }

  a = 1; b = 2;
  // Repetition menggunakan do while
  print("Repetition with Do-While");
  do {
    print(a);
    a++;
  } while (a < b);

  a = 1; b = 2;
  swap(a, b);
}