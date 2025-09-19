// Enums

// Task 2
enum OrderStatus { pending, processing, shipped, delivered, cancelled }

// Task 3
enum TrafficLight { red, yellow, green }

String getTrafficAction(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      return "Stop";
    case TrafficLight.yellow:
      return "Caution";
    case TrafficLight.green:
      return "Go";
  }
}

// Task 4
enum UserRole { admin, editor, guest }

class User {
  String name;
  UserRole role;

  User(this.name, this.role);

  bool hasEditPermission() {
    return role == UserRole.admin || role == UserRole.editor;
  }
}

// Task 5
extension TrafficLightProperties on TrafficLight {
  int get durationInSeconds {
    switch (this) {
      case TrafficLight.red:
        return 30;
      case TrafficLight.yellow:
        return 5;
      case TrafficLight.green:
        return 45;
    }
  }
}

void main() {
  // Task 2
  print("\nTask 2:");

  var status = OrderStatus.processing;
  print("Order status: $status");

  // Task 3
  print("\nTask 3:");

  for (var light in TrafficLight.values) {
    print("Traffic light $light → ${getTrafficAction(light)}");
  }

  // Task 4
  print("\nTask 4:");

  var user1 = User("Alice", UserRole.admin);
  var user2 = User("Bob", UserRole.guest);

  print("${user1.name} has edit permission? ${user1.hasEditPermission()}");
  print("${user2.name} has edit permission? ${user2.hasEditPermission()}");

  // Task 5
  print("\nTask 5:");

  for (var light in TrafficLight.values) {
    print("Light: $light → Duration: ${light.durationInSeconds} seconds");
  }
}
