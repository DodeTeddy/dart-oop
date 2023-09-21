/* 
method expression body bisa digunakan apabila kita ingin membuat suatu method yang sederhana
dengan method expression body method yg sederhana bisa menjadi satu line code saja
 */

class Method {
  String nama = 'Dode Teddy';

  // contoh method expression body
  void helloWorld() => print('Hello, World!');

  void hello() => print('Hello, $nama');

  String withReturnValue(String value) => value;
}

void main() {
  var classDenganMethod = Method();

// contoh cara memanggil method expression body. Sama saja seperti memanggil method biasa
  classDenganMethod.helloWorld();
  classDenganMethod.hello();
  print(classDenganMethod.withReturnValue('Trisnardiantari'));
}
