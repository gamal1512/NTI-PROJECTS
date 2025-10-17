import 'dart:io';
void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= rows; i++) {
    String line = "";
    for (int j = 1; j <= i; j++) {
      line += "* ";
    }
    print(line);
  }
}