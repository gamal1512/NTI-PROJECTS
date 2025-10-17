import 'dart:io';
void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  stdout.write("Enter number of columns: ");
  int cols = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < rows; i++) {
    String line = "";
    for (int j = 0; j < cols; j++) {
      line += "* ";
    }
    print(line);
  }
}