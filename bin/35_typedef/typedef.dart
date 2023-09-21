/*
typedef digunakan apabila kita ingin sebuah class bisa diakses dengan nama yang berbeda
typed sebenarnya bisa digunakan pada function akan tetapi tidak disarankan
*/

class ClassWithLongName {
  String text = '';

  ClassWithLongName(this.text);
}

typedef HelloWorld
    = ClassWithLongName; // sehingga sekarang class dengan nama ClassWithLongName bisa diakses dengan nama HelloWorld

void main() {
  var classWithLongName = ClassWithLongName('ClassWithLongName before typedef');
  var helloWorld = HelloWorld('ClassWithLongName after typedef');

  print(classWithLongName.text);
  print(helloWorld.text);
}
