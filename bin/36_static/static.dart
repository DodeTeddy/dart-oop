/*
static merupakan kata kunci yang digunakan apabila kita ingin field atau method pada class dapat diakses tanpa membuat objectnya terlebih dahulu
class dengan static field dan method ini biasanya digunakan untuk pembuatan utilities
untuk mengaksesnya NamaClass.namaField atau NamaClass.namaMethod
*/

class StaticKeyWord {
  static final String text = 'Hello, World! From Static Field';

  static String helloWorld() {
    return 'Hello, World! From Method Field';
  }
}

void main() {
  print(StaticKeyWord.text);
  print(StaticKeyWord.helloWorld());
}
