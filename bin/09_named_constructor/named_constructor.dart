/*
named constructor digunakan apabila kita ingin membuat constructor lebih dari satu
membuat named constructor dibuat dengan cara /namaClass.namaNamedConstructor
pada saat pembuatan named constructor namanya tidak boleh sama dengan named constructor yang lain
 */

class NamedConstructor {
  String? helloWorld;
  String hello = 'Dode Teddy';

  // constructor
  NamedConstructor(this.helloWorld, this.hello);

  NamedConstructor.helloWorldOnly(this.helloWorld);

  NamedConstructor.helloOnly(this.hello);
}

void main() {
  // constructor biasa
  var constructor = NamedConstructor('Hello, World!', 'Hello');
  print(constructor.helloWorld);
  print(constructor.hello);

  // named constructor helloWorldOnly
  var namedConstructorHelloWorld = NamedConstructor.helloWorldOnly('Named Constructor Hello World Only');
  print(namedConstructorHelloWorld.helloWorld);

  // named constructor helloOnly
  var namedConstructorHello = NamedConstructor.helloOnly('Named Constructor Hello Only');
  print(namedConstructorHello.hello);
}
