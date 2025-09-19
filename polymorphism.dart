// Polymorphism
import 'dart:convert';

// Task 2
abstract class Weapon {
  void attack();
}

class Sword extends Weapon {
  @override
  void attack() {
    print("Swing");
  }
}

class Bow extends Weapon {
  @override
  void attack() {
    print("Whoosh");
  }
}

// Task 3
abstract class Animal {
  void eat();
}

class Lion extends Animal {
  @override
  void eat() {
    print("Eating meat");
  }
}

class Goat extends Animal {
  @override
  void eat() {
    print("Eating grass");
  }
}

void feed(Animal animal) {
  animal.eat();
}

// Task 4
abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$$amount using Credit Card");
  }
}

class PayPal extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$$amount using PayPal");
  }
}

void processPayment(PaymentMethod method, double amount) {
  method.pay(amount);
}

// Task 5
abstract class DataFormatter {
  String format(Map<String, dynamic> data);
}

class JSONFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    return jsonEncode(data);
  }
}

class KeyValueFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    return data.entries.map((e) => "${e.key}: ${e.value}").join('\n');
  }
}


void main() {
  // Task 2
  print("\nTask 2: ");

  List<Weapon> weapons = [Sword(), Bow()];
  for (var weapon in weapons) {
    weapon.attack();
  }

  // Task 3
  print("\nTask 3: ");

  var simba = Lion();
  var gompers = Goat(); // that goat from Gravity Falls

  feed(simba);
  feed(gompers);

  // Task 4
  print("\nTask 4: ");

  var credit = CreditCard();
  var paypal = PayPal();

  processPayment(credit, 150.0);
  processPayment(paypal, 75.5);

  // Task 5
  print("\nTask 5: ");

  final sampleData = <String, dynamic> {
    "id": "230051",
    "name": "Sam",
    "active": true,
    "score": 78.5
  };

  List<DataFormatter> formatters = [
    JSONFormatter(),
    KeyValueFormatter()
  ];

  for (var formatter in formatters) {
    print("${formatter.runtimeType}: ");
    print(formatter.format(sampleData));
  }
}