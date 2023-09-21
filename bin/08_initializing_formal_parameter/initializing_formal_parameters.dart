/*
initializing formal parameters digunakan apabila kita ingin variable didalam class
otomatis nilainya diisi dengan value yang diberikan pada saat membuat object
bentuk ini lebih sederhana dan lebih singkat dibandingkan kita secara manual
mengganti nilai dari varible didalam class pada body constructor

noted: body constructor optional bisa dibuat atau tidak
 */

class Constructor {
  String? helloWorld;
  String hello = 'Dode Teddy';

// initializing formal parameters
  Constructor(this.helloWorld, this.hello);

/* constructor
  Constructor(String paramHelloWorld, String paramHello) {
    /body contructor/

    helloWorld = paramHelloWorld; // contoh mengganti nilai variable didalam class secara manual pada body constructor
    hello = hello; // contoh mengganti nilai variable didalam class secara manual body constructor
  }
*/
}

void main() {
  var constructor = Constructor('Hello, World!', 'Hello');

  print(constructor.helloWorld);
  print(constructor.hello);
}
