import 'dart:io';

void main() {
  stdout.write("Enter parking hours: "); 
  int hours = int.parse(stdin.readLineSync()!);

  stdout.write("Is it weekend? (yes/no): "); 
  String weekendInput = stdin.readLineSync()!.toLowerCase(); 
  bool isWeekend = (weekendInput == "yes");

  int cost = 0;

  if (hours <= 2) { 
    cost = 0;
  } else if (hours <= 5) {
    cost = (hours - 2) * 10;
  } else {
    cost = (3 * 10) + (hours - 5) * 20;
  }
  if (isWeekend) {
    cost += 50;
  }

  print("Total parking cost: $cost");
}