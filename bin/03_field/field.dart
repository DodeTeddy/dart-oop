/* 
field/properties/atribute bisa dikatakan sebagai variable yang ada pada object
field/properties/atribute ini letaknya atau dideklarasikan didalam block class yang dijadikan object
 */

class Field {
  // contoh field/properties/atribute
  String user = 'Guest';
  int? umur; // field/properties/atribute yang nullable
  final String hobi = 'Belajar Ngoding'; // field/properties/atribute yang tidak dapat diubah
}

void main() {
  var classDenganField = Field();

// contoh cara memanggil field/properties/atribute
  print(classDenganField.user);
  print(classDenganField.umur);
  print(classDenganField.hobi);

  // contoh cara mengubah nilai field/properties/atribute
  classDenganField.user = 'Dode Teddy';
  print(classDenganField.user);
  classDenganField.umur = 15;
  print(classDenganField.umur);
  // classDenganField.hobi = 'Sepak Bola';  contoh field/properties/atribute tidak dapat diubah
}
