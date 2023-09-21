/* 
method bisa diartikan sebagai function yang ada pada object
atau
method merupakan function yang ada didalam block class
 */

class Method {
  String nama = 'Dode Teddy';

  // contoh method/function
  void helloWorld() {
    print('Hello, World!');
  }

  void hello() {
    // method/function dari suatu object atau class bisa mengakses variable/field/properties/atribute yang berada di satu block yang sama
    print('Hello, $nama'); // contoh akses variable/field/properties/atribute
  }

  String withReturnValue(String value) {
    return value;
  }
}

void main() {
  var classDenganMethod = Method();

// contoh cara memanggil method
  classDenganMethod.helloWorld();
  classDenganMethod.hello();
  print(classDenganMethod.withReturnValue('Trisnardiantari')); // method dengan return value
}
