/*
mixin ini sendiri seperti melakukan copy paste field dan method yang ada pada satu class yang dijadikin mixin kepada class lainnya
untuk mengimplementasikan mixin bisa menggunakan keyword with pada class yang ingin mengimplementasikan mixin
selain itu mixin juga penggunaanya bisa dibatasi. Pada saat membuat mixin perlu ditambahkan keyword on dan selanjutnya nama class yang boleh
mengimplementasikan mixin tersebut. Sehingga class lain yang bukan class tersebut tidak bisa mengimplementasikan mixin tersebut kecuali
class yang lain tersebut merupakan turunan dari class yang bisa mengimplementasikan mixin
*/

class Class {}

mixin MixinOne on Class {
  // hanya bisa diakses oleh class dengan nama Class
  String name = '';
}

mixin MixinTwo {
  int age = 0;

  void helloWorld() {
    print('Hello, World!');
  }
}

// apabila class ini ingin mengimplementasikan MixinOne maka harus extend ke class yang bisa mengakses MixinOne yaitu class dengan nama CLass
class ImplementMixin extends Class with MixinOne, MixinTwo {}

void main() {
  var implementMixin = ImplementMixin();

  implementMixin.name = 'Dode Teddy';
  implementMixin.age = 15;

  print(implementMixin.name);
  print(implementMixin.age);
  implementMixin.helloWorld();
}
