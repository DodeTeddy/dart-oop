/*
abstract class pembuatannya sama dengan class biasa namun dengan tambahan keyword abstract sebelum class
abstract class tidak bisa dibuat menjadi object akan tetapi abstarct class bisa di turunkan atau inheritance
ke class yang lain. Intinya abstract class digunakan sebagai class parent yang dapat diturunkan atau inheritance ke class child
class child yang memiliki turunan dari abstract class baru bisa di intstansiasi atau dibuat menjadi object
*/

abstract class AbstractClass {
  String? helloWorld;
}

class ClassChild extends AbstractClass {
  void hello(String text) {
    helloWorld = text;
    print(helloWorld);
  }
}

void main() {
  // var abstarctClass = AbstractClass(); tidak bisa

  var classChild = ClassChild();
  classChild.hello('Hello, World!');
}
