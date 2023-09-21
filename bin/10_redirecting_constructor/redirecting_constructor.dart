/*
redirecting contrustor digunakan apabila kita ingin named constructor kita hanya menerima param yang kemudian
param tersebut akan diarahkan atau didirect ke constructor utama
redirecting constructor ini juga bisa digunakan untuk named constructor
 */

class RedirectingConstructor {
  String? helloWorld;
  String hello = 'Dode Teddy';

  // constructor
  RedirectingConstructor(this.helloWorld, this.hello);

  RedirectingConstructor.toConstructor(String param) : this(param, '');

  RedirectingConstructor.toNamedConstructor(String param) : this.toConstructor(param);
}

void main() {
  // constructor biasa
  var redirectingConstructor = RedirectingConstructor.toConstructor('Redirecting Constructor');
  print(redirectingConstructor.helloWorld);

  var redirectingNamedConstructor = RedirectingConstructor.toNamedConstructor('Redirecting to Named Constructor');
  print(redirectingNamedConstructor.helloWorld);
}
