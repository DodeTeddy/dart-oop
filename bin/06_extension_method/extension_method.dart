/*
extension method ini digunakan apabila kita ingin menambah method pada class yang sudah kita buat
dengan menggunakan extension method kita tidak perlu lagi membuat class baru yang isinya sama dengan 
class yang ada apabila kita ingin menambah method baru
kita bebas menambahkan method baru sesuka kita dengan menggunakan extension method
*/

class User {
  void namaUser() => print('Dode Teddy');
}

extension UserPassword on User {
  void passwordUser() => print('********');
}

void main() {
  var user = User();

  user.namaUser();
  user.passwordUser();
  // jika kita ingin mengakses extension method kita cukup mengaksesnya melalui class parent atau object parentnya saja
}
