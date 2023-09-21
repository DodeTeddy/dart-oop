/*
getter setter ini berfungsi apabila kita ingin membuat field kita yang private bisa diakses difile lain
adapaun contoh dari kegunaan getter setter yang baik sesaui best practice dan kurang baik
apabila kita ingin membuat getter setter yang hanya mengembalika satu data field saja atau tanpa adanya condisi pada saat setter
lebih baik fieldnya dibuat sebagai field biasa saja
*/

class GetterSetter {
  String _name = 'Default Name';
  int _age = 0;

// good getter setter
  String get name => _name;

  set name(String valueName) {
    if (valueName.length > 8) {
      _name = valueName;
    }
  }

// bad getter setter
  int get age => _age;

  set age(int valueAge) => _age = valueAge;
}
