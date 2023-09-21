/*
inheritance atau pewarisan merupakan proses yang digunakan apabila kita ingin membuat sebuah kelas
yang memiliki properties atau method yang sama dengan class yang lain. class child hanya boleh memiliki satu class parent
dalam pembuatan class yang inheritance bisa menggunakan extends
*/

class ClassParent {
  String? name;

  void greetings(String greeting) {
    print('$greeting, $name');
  }
}

class ClassChild extends ClassParent {
  // ClassParent akan mewariskan semua properties dan method yang dimiliki kedalam ClassChild
  int? age;

  void profile() {
    print('name: $name age: $age');
  }
}

void main() {
  var classParent = ClassParent();
  classParent.name = 'Dode Teddy';
  classParent.greetings('Hello');

  var classChild = ClassChild();
  classChild.name = 'Trisnardiantari'; // properties name merupakan pewarisan dari ClassParent
  classChild.age = 17;
  classChild.profile();
}
