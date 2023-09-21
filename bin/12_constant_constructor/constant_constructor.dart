/* 
constant constructor digunakan apabila kita ingin membuat object kita bersifat constant atau tidak bisa diubah
dalam pembuatan constant constructor variable yang ada pada class tersebut harus menggunakan keyword final
untuk pembuatan constant constructor pada constructornya ditambahkan dengan keyword const
keuntungan menggunakan constant constructor apabila kita memanggil object berulang kali maka
objectnya tidak akan disimpan dilokasi memori yang berbeda karena dart sudah mengetahui bahwa
object tersebut nilainya tidak mungkin berubah atau constant
*/

class ConstantConstructor {
  final String helloWorld;

  const ConstantConstructor(this.helloWorld);
}

void main() {
  var constantConstructor1 = const ConstantConstructor('Hello, World!');
  var constantConstructor2 = const ConstantConstructor('Hello, World!');
/* 
jika dipanggil dua kali dengan nilai parameter yang sama dan kemudia dicek apakah object tersebut sama maka nilainya akan true
karena sebenarnya yang dipanggil object yang sama yang ada didalam memori. Object 1 tidak disimpan dimemori yang berbeda begitupun object 2
beda kasus apabila dalam pemanggilan object tidak ditambahkan keyword const diawal maka jikda dicek nilainya akan false
karena kedua object tersebut walaupun sama secara kasat mata sifatnya tidak constant sehingga akan disimpan didalam memeori
yang berbeda
*/
  print(constantConstructor1 == constantConstructor2);
}
