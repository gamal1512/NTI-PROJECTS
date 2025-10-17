import 'dart:io';
void main() {
  List fruits = ['Apple', 'Banana', 'Mango', 'Orange', 'Grapes'];
  print("All fruits: $fruits");
  print("First fruit: ${fruits.first}");
  print("Last fruit: ${fruits.last}");
  fruits.add('Pineapple');
  print("After adding one fruit: $fruits");
  fruits.insert(2, 'Strawberry');
  print("After inserting at index 2: $fruits");
  fruits.remove('Banana');
  print("After removing 'Banana': $fruits");
  print("Number of fruits left: ${fruits.length}");
  print("\nList of fruits:");
  for (var fruit in fruits) {
    print(fruit);
  }
  stdout.write("\nEnter a fruit name to search: ");
  String? searchFruit = stdin.readLineSync();
  if (searchFruit != null) {
    if (fruits.contains(searchFruit)) {
      print("✅ Yes, it's in the list!");
    } else {
      print("❌ No, not found.");
    }
  }
}
