/*
type check & cast digunakan apabila kita ingin menkonfersi data ke tipe data aslinya
akan tetapi agar lebih aman kita perlu melakukan pengecekan terlebih dahulu
untuk mengecek tipe data kita bisa menggunakan is
untuk mengkonversi tipe data Object kita bisa menggunakan as
*/

class HelloWorld {
  String? helloWorld;

  HelloWorld(this.helloWorld);
}

class HelloWorldInheritance extends HelloWorld {
  HelloWorldInheritance(String text) : super(text);
}

void hello(HelloWorld hello) {
  if (hello is HelloWorldInheritance) {
    print('${hello.helloWorld} Inheritance');
  } else {
    print(hello.helloWorld);
  }
}

void main() {
  hello(HelloWorld('Hello, World!'));
  hello(HelloWorldInheritance('Hello, World!'));
}
