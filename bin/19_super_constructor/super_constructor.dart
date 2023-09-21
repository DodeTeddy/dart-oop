/*
super constructor cara penggunaanya sama seperti redirecting constructor
berbeda dengan redirecting, super constructor bisa memiliki body constructor
*/

class ClassParent {
  String? name;

  ClassParent(this.name);
}

// apabila class parent memiliki contructor maka class child harus mengakses contructor pada class parent
class ClassChild extends ClassParent {
  ClassChild(String name) : super(name) {
    print('Body Constructor');
  }
}

void main() {
  var objectParent = ClassParent('Trisnardiantari');
  print(objectParent.name);

  var objectChild = ClassChild('Dode Teddy');
  print(objectChild.name);
}
