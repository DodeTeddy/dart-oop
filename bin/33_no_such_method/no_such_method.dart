/*
noSuchMethod merupakan fitur yang ada pada dart dimana kita seolah olah membuat method yang dynamic
noSuchMethod ini penggunaanya bisa dibatasi juga dengan cara membuat abstract class yang berisis field field yang diinginkan
kemudian di turunkan kepada class yang memiliki noSuchMethod, dalam pembuatan noSuchMethod terdapat parameter dengan type Invocation
*/

import 'dart:mirrors';

abstract class Product {
  id(int id);
  productName(String productName);
  quantity(String quantity);
}

class NoSuchMethodOne {
  // bebas menambahkan method apapun pada saat pembuatan object
  final String _name;

  NoSuchMethodOne(this._name);

  @override
  dynamic noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = 'SELECT * FROM $_name where $column = \'$value\'';
    print(sql);
  }
}

class NoSuchMethodTwo extends Product {
  // dibatasi dengan method yang ada pada abstract class
  final String _name;

  NoSuchMethodTwo(this._name);

  @override
  dynamic noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = 'SELECT * FROM $_name where $column = \'$value\'';
    print(sql);
  }
}

void main() {
  dynamic noSuchMethodOne = NoSuchMethodOne('ProductOne'); // apabila tidak dibatasi maka type object harus dynamic
  var noSuchMethodTwo = NoSuchMethodTwo('ProductTwo');

  noSuchMethodOne.blabla('8');

  noSuchMethodTwo.id(15);
  // noSuchMethodTwo.blabla('8'); tidak bisa karena noSuchMethodTwo sudah dibatasi
}
