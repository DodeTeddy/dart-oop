/*
callable class merupakan class yang bisa dipanggil layakanya function
untuk membuat callable class bisa menggunakan method call()
*/

class CallAbleClass {
  String call(String teks) => teks;
}

void main() {
  var callAbleClass = CallAbleClass();
  print(callAbleClass('Hello, World!'));
}
