// Asynchronous programming
import 'dart:async';

// Task 2
Future<String> generateReport() {
  return Future.delayed(Duration(seconds: 1), () => 'Report generated!');
}

// Task 3
Future<String> fetchUsername() async {
  await Future.delayed(Duration(seconds: 1));
  return "Sunnatilla";
}

// Task 4
Future<int> fetchUserId() async {
  await Future.delayed(Duration(seconds: 1));
  return 230051;
}

Future<String> fetchUserDetails(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return "Sam"; 
}

// Task 5
Future<String> fetchConfiguration() async {
  await Future.delayed(Duration(seconds: 1));
  return "Configuration loaded";
}

Future<String> loadResources() async {
  await Future.delayed(Duration(seconds: 2));
  return "Resources loaded";
}

void main() async {
  // Task 2
  print("\nTask 2: ");

  print('Generating report...');
  await generateReport().then((result) {
    print(result);
  });

  // Task 3
  print("\nTask 3: ");

  String username = await fetchUsername();
  print("Fetched username: $username");

  // Task 4
  print("\nTask 4: ");

  int userId = await fetchUserId();
  
  String userName = await fetchUserDetails(userId);
  
  print("Fetched username: $userName");

  // Task 5
  print("\nTask 5: ");

  print("Starting system initialization...");

  List<String> results = await Future.wait([
    fetchConfiguration(),
    loadResources(),
  ]);

  results.forEach(print);

  print("System Ready");
}
