enum Packet { small, medium, large }

class ClassPacket {
  String drink;
  Packet packet;

  ClassPacket(this.drink, this.packet);
}

void main() {
  var classPacket = ClassPacket('Coffee', Packet.small);

  print(classPacket.drink);
  print(classPacket.packet);
}
