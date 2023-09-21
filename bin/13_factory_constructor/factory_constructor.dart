/*
 factory constructor cara pembuatannya hampir sama dengan named constructor perbedaannya hanya pada penambahan keyword factory pada pembuatan constructornya
 named constructor nilainnya sudah diatur sedangkan factory constructor kita bisa memberikan return value yang sesuai dengan keinginan.
*/
class FactoryConstructor {
  FactoryConstructor() {
    print('Create...');
  }

  static FactoryConstructor factoryConstructor = FactoryConstructor();

  factory FactoryConstructor.get() {
    return factoryConstructor;
  }
}

void main() {
  var factoryConstructor1 = FactoryConstructor.get();
  var factoryConstructor2 = FactoryConstructor.get();

  print(factoryConstructor1 == factoryConstructor2);
}
