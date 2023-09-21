import 'access_modifier.dart';

void main() {
  var accessModifier = AccessModifier();
  accessModifier.nama = 'Dode Teddy';
  // accessModifier._age = 15; tidak bisa diakses diluar file
  print(accessModifier.profile());
}
