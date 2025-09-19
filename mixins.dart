// Mixins

// Task 2
mixin Flyer {
  String fly() {
    return "believes it can fly"; // not print because I wanted to modify
  }
}

class Bird with Flyer {
  String species;

  Bird(this.species);
}

class Plane with Flyer {
  String model;

  Plane(this.model);
}

// Task 3
mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

class DataService with Logger {
  void fetchData() {
    log("Fetching data...");
    log("Data successfully fetched!");
  }
}

// Task 4
mixin Validator {
  bool isEmailValid(String email) {
    return RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$').hasMatch(email);
  }

  bool isPasswordStrong(String password) {
    return password.length > 8;
  }
}

class UserSignup with Validator {
  String email;
  String password;

  UserSignup(this.email, this.password);

  void validate() {
    print("Validating user signup...");

    if (isEmailValid(email)) {
      print("Email '$email' is valid");
    } else {
      print("Email '$email' is invalid");
    }

    if (isPasswordStrong(password)) {
      print("Password is strong");
    } else {
      print("Password is too weak");
    }
  }
}

// Task 5
mixin Performer {
  void perform() {
    print("Performing on stage");
  }
}

mixin Musician {
  void playInstrument() {
    print("Playing an instrument");
  }
}

class Artist {
  String name; // it should have something, otherwise there is no reason to extend it
  Artist(this.name);
}

class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}

class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}

void main() {
  // Task 2
  print("\nTask 2: ");

  var charmonyDove = Bird("Charmony Dove");
  var boeing = Plane("Boeing 787");

  print("${charmonyDove.species} ${charmonyDove.fly()}");
  print("${boeing.model} ${boeing.fly()}");

  // Task 3
  print("\nTask 3:");

  var service = DataService();

  service.fetchData();

  // Task 4
  print("\nTask 4:");

  var user1 = UserSignup("s.ramziddinov@newuu.uz", "123456789");
  var user2 = UserSignup("bad-email", "230051");

  user1.validate();
  user2.validate();

  // Task 5
  print("\nTask 5:");

  var dancer = Dancer("Sam");
  dancer.perform();

  print("");

  var guitarist = Guitarist("Smas");
  guitarist.perform();
  guitarist.playInstrument();
}