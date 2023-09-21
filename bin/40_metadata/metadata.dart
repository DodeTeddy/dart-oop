/*
dart metadata merupakan sebuah penanda atau mirip seperti documentation
penanda dalam metadata tersebut disebut sebagai anotation
anotation pada dart sendiri yaitu @overriding dan @Decprecated
selain itu kita bisa membuat anotation sendiri
*/

class CustomAnotation {
  final String value;

  const CustomAnotation(this.value);
}

class AnotationExample {
  String value = '';

  @override // menandakan bahwa method ini merupakan overriding
  String toString() {
    return value;
  }

  @Deprecated('This method no longer used') // menandakan bahwa method ini sudah tidak direkomendasikan untuk digunakan
  void doNotUseThis() {}

  @CustomAnotation('This is custom anotation') // custom anotation
  void customAnotation() {}
}
