/*
equals operator atau == merupakan dari object class sehingga equals operator bisa dioverride
*/

class Comparison {
  String name = '';
  int age = 0;

  Comparison(this.name, this.age);

  @override
  bool operator ==(Object other) {
    if (other is Comparison) {
      if (name != other.name) {
        return false;
      } else if (age != other.age) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }
}

void main() {
  var comparisonOne = Comparison('Dode Teddy', 15);
  var comparisonTwo = Comparison('Dode Teddy', 15);

  print(comparisonOne == comparisonTwo);
  /* 
  apabila tidak mengoverride == maka yang dicompare object yang berada dimemori berbeda sehingga pasti false
  dengan mengoverride kita bisa membuat equals operator melakukan komparasi sesuai keinginan kita
  pada hal ini equals operator di override untuk mengecek value dari objectnya bukan lokasi object pada memorinya
  */
}
