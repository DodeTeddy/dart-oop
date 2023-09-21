/*
cascade notation digunakan apabila kita ingin memanggil properties tanpa menyebutkan nama objectnya
untuk object yang non nullable bisa menggunakan ..
untuk object yang nullable bisa menggunakan ?..
*/

class CascadeNotation {
  String? firstName;
  String? lastName;
}

CascadeNotation? cascadeNotationNullable() {
  return CascadeNotation();
}

void main() {
  var cascadeNotationNonNullable = CascadeNotation()
    ..firstName = 'Trisna'
    ..lastName = 'rdiantari';

  print('${cascadeNotationNonNullable.firstName}${cascadeNotationNonNullable.lastName}');

  CascadeNotation? cascadeNotationNull = cascadeNotationNullable()
    ?..firstName = 'Dode'
    ..lastName = 'Teddy';

  print('${cascadeNotationNull?.firstName} ${cascadeNotationNull?.lastName}');
}
