import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter second number: ");
  int b = int.parse(stdin.readLineSync()!);
  print("Numbers between $a and $b:");
  int start = a < b ? a : b;
  int end = a > b ? a : b;
  for (int i = start; i <= end; i++) {
    print(i);
  }
}