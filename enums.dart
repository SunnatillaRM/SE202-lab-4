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
  print("Order status: ${status.name}");

  // Task 3
  print("\nTask 3:");

  for (var light in TrafficLight.values) {
    print("Traffic light ${light.name} → ${getTrafficAction(light)}");
  }

  // Task 4
  print("\nTask 4:");
  
  var user1 = User("Sam", UserRole.admin);
  var user2 = User("Smas", UserRole.guest);

  print("${user1.name} ${user1.hasEditPermission() ? "has" : "doesn't have"} edit permission");
  print("${user2.name} ${user2.hasEditPermission() ? "has" : "doesn't have"} edit permission");

  // Task 5
  print("\nTask 5:");
  
  for (var light in TrafficLight.values) {
    print("Light: ${light.name} → Duration: ${light.durationInSeconds} seconds");
  }
}
