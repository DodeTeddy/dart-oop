/*
constructor bisa dikatakan sebagai parameter untuk class
class yang memiliki constructor, pada saat pembuatan object
secara otomatis yang dipanggil contructor juga. Pada intinya
constuctor ini sama halnya seperti parameter dalam function
contructor hanya bisa dibuat satu kali tidak dapat berulang
pada saat pembuatan constructor, nama consturctor harus sama dengan nama class
 */

class Constructor {
  String? helloWorld;
  String hello = 'Dode Teddy';

  // constructor
  Constructor(String paramHelloWorld, String paramHello) {
    helloWorld = paramHelloWorld;
    hello = hello;
  }
}

void main() {
  var constructor = Constructor('Hello, World!', 'Hello');

  print(constructor.helloWorld);
  print(constructor.hello);
}
