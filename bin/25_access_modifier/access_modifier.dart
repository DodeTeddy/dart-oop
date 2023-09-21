/*
access modifier digunakan apabila ada kasus dimana kita ingin membuat field atau method pada class
hanya bisa diakses di file terseebut saja atau tidak dapat diakses pada file diluar file tersebut
untuk membuat field atau method tidak bisa diakses diluar filenya hanya perlu menambahkan _ sebelum nama field atau methodnya
*/

class AccessModifier {
  String? nama;
  int? _age; // tidak bisa diakses diluar file

  String profile() {
    return 'Nama: $nama, Age: $_age';
  }
}
