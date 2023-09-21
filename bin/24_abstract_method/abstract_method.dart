/*
abstract method hanya bisa dibuat pada abstract class
apabila terdapat abstract method pada abstract class maka class turunannya harus mengoverride methode tersebut
*/

abstract class AbstractClass {
  String? name;

  void methodAbstract();
}

class ClassChild extends AbstractClass {
  @override
  void methodAbstract() {
    print(name);
  }
}

void main() {
  var classChild = ClassChild();
  classChild.name = 'Dode Teddy';
  classChild.methodAbstract();
}
