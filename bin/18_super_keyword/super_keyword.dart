/*
super keyword digunakan apabila kita ingin mengakses method dari class parent pada child parent
super keyword bisa digunakan pada saat ingin mengakses method maupun field dari class parent
yang sudah terlanjur di override pada class childnya
*/

class ClassParent {
  String methodParent() {
    return 'methodParent';
  }
}

class ClassChild extends ClassParent {
  @override
  String methodParent() {
    return 'methodChild';
  }

  String methodChild() {
    return super
        .methodParent(); //apabila tidak menggunakan keyword super maka method yang diakses merupakan method yang sudah di override
  }
}

void main() {
  var object = ClassChild();

  print(object.methodParent());
  print(object.methodChild());
}
