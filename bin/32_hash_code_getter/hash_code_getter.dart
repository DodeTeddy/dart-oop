/*
pada saat mengoveerride equals operator cara yang benar kita juga harus membuat hashcode dari kedua object yang dibandingkan bernilai sama
hashcode sama seperti toString namun untuk hascode merepresentasikan integer
apabila belum melakukan hashcode getter maka jika kita print haschcode dari object pasti akan berbeda jika kita hanya
melakukan override equals operator, sehingga diperlukan untuk melakukan hashcode getter
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

  @override
  int get hashCode {
    var result = name.hashCode;
    result += age;
    return result;
  }
}

void main() {
  var comparisonOne = Comparison('Dode Teddy', 15);
  var comparisonTwo = Comparison('Dode Teddy', 15);

  print(comparisonOne == comparisonTwo);
  print(comparisonOne.hashCode);
  print(comparisonTwo.hashCode);
}
