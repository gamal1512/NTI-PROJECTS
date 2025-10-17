// count even and odd no
import 'dart:io';
void main() {
  stdout.write("How many numbers? ");
  int n = int.parse(stdin.readLineSync()!);
  int evenCount = 0;
  int oddCount = 0;
  for (int i = 1; i <= n; i++) {
    stdout.write("Enter number $i: ");
    int num = int.parse(stdin.readLineSync()!);
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }
  print("Even numbers: $evenCount");
  print("Odd numbers: $oddCount");
}