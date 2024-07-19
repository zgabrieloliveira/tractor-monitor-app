import 'dart:math';

class IdGenerator {

  static String generateUniqueId() {
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    int randomValue = Random().nextInt(1000000);
    // concatena o timestamp e o valor aleatório para criar uma string única
    String uniqueId = '$timestamp$randomValue';
    return uniqueId;
  }

}