// Inheritance

// Task 2
class Animal {
  void makeSound() {
    print("Animal made sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof woof");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Miau"); // just a meme
  }
}

// Task 3
class Shape {
  String color;

  Shape(this.color);

  void showYouExist() { // idk, the task asked just to create a class. What should I do with it, what should I write in main()? Unspecified. It just exists and occupies my memory
    print("This shape is $color");
  }
}

class Circle extends Shape {
  double radius;

  Circle(String color, this.radius) : super(color);

  @override
  void showYouExist() {
    print("This circle is $color and its raduis is $radius cm");
  }
}

class Square extends Shape {
  double sideLength;

  Square(String color, this.sideLength) : super(color);

  @override
  void showYouExist() {
    print("This square is $color and its side lenght is $sideLength cm");
  }
}

// Task 4
class Employee {
  String name;
  double baseSalary;

  Employee(this.name, this.baseSalary);

  double calculateSalary() => baseSalary;

  String get specifyRole => "an employee"; // just for cosmetics
}

class Manager extends Employee {
  double bonus;

  Manager(name, baseSalary, this.bonus) : super(name, baseSalary);

  @override
  double calculateSalary() => baseSalary + bonus;

  @override
  String get specifyRole => "a manager";
}

// Task 5
class LibraryItem {
  String title;
  String id;

  LibraryItem(this.title, this.id);

  String getDetails() {
    return "Title: $title \nID: $id";
  }
}

class Book extends LibraryItem {
  String author;

  Book(title, id, this.author) : super(title, id);

  @override
  String getDetails() {
    return "Title: $title \nAuthor: $author \nID: $id";
  }
}

class DVD extends LibraryItem {
  String director;

  DVD(title, id, this.director) : super(title, id);

  @override
  String getDetails() {
    return "Title: $title \nAuthor: $director \nID: $id";
  }
}

void main() {
  // Task 2
  print("\nTask 2:");

  var trueFriend = Dog();
  var devilIncarnation = Cat(); // I like cats more than dogs btw

  trueFriend.makeSound();
  devilIncarnation.makeSound();

  // Task 3
  print("\nTask 3: ");

  var trug = Circle("red", 7.5);
  var squr = Square("yellow", 21.3);

  trug.showYouExist();
  squr.showYouExist();

  // Task 4
  print("\nTask 4:");

  // Usually, minions don't have a salary :p
  var bob = Employee("Bob", 3000.0); 
  var kevin = Manager("Kevin", 10000.0, 2000.0);

  print("This is ${bob.name}. ${bob.name} is ${bob.specifyRole}. He earns \$${bob.calculateSalary().toStringAsFixed(2)} a month");
  print("This is ${kevin.name}. ${kevin.name} is ${kevin.specifyRole}. He earns \$${kevin.calculateSalary().toStringAsFixed(2)} a month");

  // Task 5
  print("\nTask 5:");

  var book1 = Book("The Call of Cthulhu", "230", "Howard Lovecraft");
  var dvd1 = DVD("Interception", "051", "Christopher Nolan");

  print("This book's info: \n${book1.getDetails()}");
  print("This DVD's info: \n${dvd1.getDetails()}");
}