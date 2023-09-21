/*
field overriding bisa dilakukan di dart tapi tidak disarankan
cara field overriding sama dengan method overriding yaitu harus sama dengan class parentnya
karena kita bisa mengubah field pada saat kita membuat object
*/

class Hello {
  String name = 'Dode Teddy';

  void hello() {
    print('Hello, $name. Welcome to universe');
  }
}

class FieldOverriding extends Hello {
  @override
  String name = 'Trisnardiantari';
}

void main() {
  var hello = Hello();
  hello.hello();

  var fieldOverriding = FieldOverriding();
  fieldOverriding.hello();
}
