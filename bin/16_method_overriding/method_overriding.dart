/*
method overiding adalah mendeklarasikan ulang method yang ada pada class parentnya di class child
untuk melakukan method overiding pada class child bentuk methodnya harus sama dengan method pada class parentnya
*/

class ClassParent {
  String? name;

  void greetings(String greeting) {
    print('$greeting, $name');
  }
}

class ClassChild extends ClassParent {
  int? age;

  @override
  void greetings(String greeting) {
    // method overriding
    print('$greeting, name: $name age: $age years old');
  }
}

void main() {
  var classParent = ClassParent();
  classParent.name = 'Dode Teddy';
  classParent.greetings('Hello');

  var classChild = ClassChild();
  classChild.name = 'Trisnardiantari';
  classChild.age = 17;
  classChild.greetings(
      'Hello bro/sis'); // method yang dipanggil merupakan method yang sudah di override di class child dan tidak lagi method yang ada di class parent
}
