/*
intializer list ini digunakan untuk memberikan nilai ke variable yang ada pada class
dengan initializer list ini kita tidak perlu mengubah atau mengisi nilai variable pada class didalam body constructor
seperti apa yang kita sudah lakukan pada constructor sebelumnya, dengan initializer list kita bisa menghindari
adanya variable shadowing
*/

class InitializerList {
  String name = '';
  String? firstName;
  String? lastName;

  InitializerList(this.name)
      : firstName = name.split(' ')[0], // initializer list
        lastName = name.split(' ')[1] // initializer list
  {
    print('Create Object');
  }
}

void main() {
  var initializerList = InitializerList('Dode Teddy');
  print(initializerList.firstName);
  print(initializerList.lastName);
}
