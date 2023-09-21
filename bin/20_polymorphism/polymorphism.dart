/*
polymophism adalah dimana sebuah object dapat dirubah asalkan dengan inheritance atau turunan yang sama
*/

class HelloWorld {
  String? helloWorld;

  HelloWorld(this.helloWorld);
}

class HelloWorldInheritance extends HelloWorld {
  HelloWorldInheritance(String name) : super(name);
}

void hello(HelloWorld hello) {
  print(hello.helloWorld);
}

void main() {
  // class HelloWorld bisa dirubah dengan HelloWorldInheritance karena HelloWorldInheritance merupakan turunan dari HelloWorld
  HelloWorld helloWorld = HelloWorld('Hello, World');
  print(helloWorld);

  helloWorld = HelloWorldInheritance('Hello, World change to HelloWorldInheritance');
  print(helloWorld);
  //======================//

  HelloWorldInheritance helloWorldInheritance = HelloWorldInheritance('Hello, World HelloWorldInheritance');
// function hello parameternya bisa diisi oleh HelloWorldInheritance karena merupakan turunan dari HelloWorld
  hello(helloWorld);
  hello(helloWorldInheritance);
}
