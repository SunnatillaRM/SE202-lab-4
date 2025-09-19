// Classes

// Task 2
class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);
}

// Task 3
class Student {
  String name;
  int age;
  List<double> grades;

  Student(this.name, this.age, this.grades);

  double calculateAverageGrade() {
    if (grades.isEmpty) {
      return 0;
    } else {
      double sum = 0;

      for (var grade in grades) {
        sum += grade;
      }

      return sum / grades.length;
    }
  }
}

// Task 4
class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited: \$${amount.toStringAsFixed(2)} \nNew Balance: \$${balance.toStringAsFixed(2)}");
    } else print("No negative numbers");
  }

  void withdraw(double amount) {
    if (amount > 0) {
      if (balance - amount >= 0) {
        balance -= amount;
        print("Withdrew: \$${amount.toStringAsFixed(2)} \nNew Balance: \$${balance.toStringAsFixed(2)}");
      } else {
        print("Error: Insufficient balance. Withdrawal denied");
      }
    } else print("No negative numbers");
  }
}

// Task 5
class Rectangle {
  double width = 0;
  double height = 0;

  Rectangle(double width, double height) {
    if (width > 0) {
      this.width = width;
    } else {
      print("Width should be greater than 0");
    }

    if (height > 0) {
      this.height = height;
    } else {
      print("Height should be greater than 0");
    }
  }

  double get area => width * height;

  double get perimeter => 2 * (width + height);
}

void main() {
  // Task 2
  print("\nTask 2:");

  var book1 = Book("Fahrenheit 451", "Ray Bradbury", 256);

  print("Title: ${book1.title} \nAuthor: ${book1.author} \nNumber of pages: ${book1.numberOfPages}"); // the task didn't specify if I should create a method to print that stuff. It's not that hard, I just decided to try a different method

  // Task 3
  print("\nTask 3:");

  var me = Student("Sam", 20, [65.5, 59.7, 80.0, 55.3]);

  print("My average grade: ${me.calculateAverageGrade().toStringAsFixed(2)}");


  // Task 4
  print("\nTask 4:");

  BankAccount myAccount = BankAccount("230051", "Sam", 4000);

  print("Current balance: \$${myAccount.balance}");

  // Test deposit
  print("");
  myAccount.deposit(500);   // valid deposit
  myAccount.deposit(-100);  // invalid deposit

  // Test withdraw
  print("");
  myAccount.withdraw(300);  // valid withdraw
  myAccount.withdraw(5000); // invalid (insufficient balance)
  myAccount.withdraw(-50);  // invalid withdrawal

  print("");
  print("Current balance: \$${myAccount.balance}");

  // Task 5
  print("\nTask 5:");

  var AB = Rectangle(10, 5);

  print("Width: ${AB.width} \nHeight: ${AB.height} \nArea: ${AB.area} \nPerimeter: ${AB.perimeter}");
}