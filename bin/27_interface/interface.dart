/*
dalam dart terdapat fitur interfce, class yang telah dibuat pada dart bisa dijadikan interface
untuk mengimplementasikan interface pada sebuah class bisa menggunakan keyword implements
pada saat mengimplementasikan interface pada class maka field dan method yang ada pada class
yang interfacenya dimplementasikan harus dideklarasikan ulang pada class yang meengimplementasikannya
berbeda dengan inheritance biasa yang hanya boleh extends 1 class parents saja dengan implements kita bisa implementasikan
beberapa class yang dijadikan interface yang disebut sebagai multiple interface inheritance
class yang akan dijadikan sebagai interface best practicenya dibuat sebagai abstract class
*/

abstract class Interface {
  String name = '';
  int age = 0;

  int ageMethod() {
    return age;
  }
}

class ClassImplementInterface implements Interface {
  @override
  String name = 'Interface Implement';

  @override
  int age = 15;

  @override
  int ageMethod() {
    return age;
  }
}

void main() {
  var classImplementInterface = ClassImplementInterface();

  print(classImplementInterface.name);
  print(classImplementInterface.ageMethod());
}
