// Exceptions
import 'dart:io';

// Task 2
void printElementAt(List<dynamic> list, int index) {
  try {
    print('Element at index $index: ${list[index]}');
  } on RangeError {
    print('Error: Invalid index.');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}

// Task 4
class InvalidInputException implements Exception {
  final String message;
  InvalidInputException(this.message);

  @override
  String toString() => "InvalidInputException: $message";
}

void processText(String text) {
  if (text.isEmpty) {
    throw InvalidInputException("Input cannot be empty.");
  }
  print("Processing text: $text");
}

// Task 5
void readFromDatabase(bool shouldFail) {
  try {
    print("\nOpening database connection...");

    if (shouldFail) {
      throw Exception("Failed to read data!");
    }

    print("Data read successfully.");
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Database connection closed.");
  }
}

void main() {
  // Task 2
  print("\nTask 2: ");

  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  printElementAt(fruits, 1);
  printElementAt(fruits, 5);

  // Task 3
  print("\nTask 3: ");

  stdout.write("Enter your age: ");
  String? userInput = stdin.readLineSync();

  if (userInput == null) {
    print("No input provided.");
  } else {
    try {
      int age = int.parse(userInput);
      print("Your age is $age");
    } on FormatException {
      print("Error: Invalid number. Please enter a valid age.");
    } catch (e) {
      print("An unexpected error occurred: $e");
    }
  }

  // Task 4
  print("\nTask 4: ");

  try {
    processText("");
  } on InvalidInputException catch (e) {
    print("Error: ${e.message}");
  } catch (e) {
    print("An unexpected error occurred: $e");
  }

  try {
    processText("Hello, Dart!");
  } on InvalidInputException catch (e) {
    print("Error: ${e.message}");
  }

  // Task 5
  print("\nTask 5: ");

  readFromDatabase(false);
  readFromDatabase(true);
}
