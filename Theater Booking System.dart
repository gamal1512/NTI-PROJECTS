import 'dart:io';

void main() {
  print("Welcome To Our Theater 🎭");
  List<List<String>> theater = List.generate(5, (_) => List.filled(5, 'E'));
  Map<String, Map<String, String>> bookings = {};
  while (true) {
    print("\npress 1 to book new seat");
    print("press 2 to show the theater seats");
    print("press 3 to show users data");
    print("press 4 to exit");
    stdout.write("input => ");
    String? choice = stdin.readLineSync();
    if (choice == '1') {
      stdout.write("Enter row (1-5) or 'exit' to quit: ");
      String? rowInput = stdin.readLineSync();
      if (rowInput == 'exit') continue;
      int row = int.parse(rowInput!);
      stdout.write("Enter column (1-5): ");
      int col = int.parse(stdin.readLineSync()!);
      if (row < 1 || row > 5 || col < 1 || col > 5) {
        print("❌ Invalid seat position!");
        continue;
      }
      if (theater[row - 1][col - 1] == 'B') {
        print("❌ Sorry, this seat is already booked!");
      } else {
        stdout.write("Enter your name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter your phone number: ");
        String phone = stdin.readLineSync()!;
        theater[row - 1][col - 1] = 'B';
        String seatKey = "$row,$col";
        bookings[seatKey] = {"name": name, "phone": phone};
        print("✅ Seat booked successfully!");
      }
    } 
    else if (choice == '2') {
      print("\nTheater Seats:");
      for (var row in theater) {
        print(row.join(' '));
      }
    } 
    else if (choice == '3') {
      print("\nUsers Booking Details:");
      if (bookings.isEmpty) {
        print("No bookings yet!");
      } else {
        bookings.forEach((seat, user) {
          print("Seat $seat: ${user['name']} - ${user['phone']}");
        });
      }
    } 
    else if (choice == '4') {
      print("\nSee You Back 👋");
      break;
    } 
    else {
      print("❌ Invalid choice! Please try again.");
    }
  }
}
