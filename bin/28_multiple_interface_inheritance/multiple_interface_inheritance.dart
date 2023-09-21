/*
berbeda dengan inheritance biasa dengan keyword extends yang mewariskan hanya satu class saja
interface bisa mengimplementasikan beberapa class yang dijadikan sebagai interface
*/

abstract class Interface {
  String name = '';
  int age = 0;

  int ageMethod() {
    return age;
  }
}

abstract class InterfaceTwo {
  String helloWorld = '';
}

class ClassImplementInterface implements Interface, InterfaceTwo {
  @override
  String name = 'Interface Implement';

  @override
  int age = 15;

  @override
  int ageMethod() {
    return age;
  }

  @override
  String helloWorld = 'Hello, World!';
}

void main() {
  var classImplementInterface = ClassImplementInterface();

  print(classImplementInterface.name);
  print(classImplementInterface.ageMethod());
  print(classImplementInterface.helloWorld);
}
