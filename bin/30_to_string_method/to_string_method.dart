/*
toString method merupakan bawaan dari object class
dengan demikian kita bisa mengoverride method toString agar saat di print sesuai dengan kemauan kita
*/

class ClassProfile {
  String name = '';

  @override
  String toString() {
    return 'Name: $name';
  }
}

void main() {
  var classProfile = ClassProfile();
  classProfile.name = 'Dode Teddy';
  print(classProfile.toString()); // sebenarnya tidak perlu memanggil method toString
  print(classProfile); // sudah otomatis yang dipanggil object.toString()
}
