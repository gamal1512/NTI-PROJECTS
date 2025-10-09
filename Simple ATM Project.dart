import 'dart:io';

void main() {
  int balance = 1000; // الرصيد الابتدائي
  print("Welcome to Simple ATM");
  print("Your starting balance is $balance");

  while (true) { // علشان اخلي البرنامج يفضل شغال دايما ميقفلش نهائي
    // عرض المنيو
    print("\n Choose an option:");
    print("1. Check Balance");
    print("2. Withdraw");
    print("3. Deposit");
    print("4. Exit");

    stdout.write("Enter choice: "); // علشان ادخل الاختيار اللي عايزه
    String? choiceInput = stdin.readLineSync(); // علشان اقراء اللي كتبه المستخدم 
    int? choice = int.tryParse(choiceInput ?? ""); 

    if (choice == null) {
      print("Invalid choice");
      continue;
    }

    if (choice == 1) {
      // Check Balance
      print("Your current balance is $balance");
    } else if (choice == 2) {
      // Withdraw السحب 
      stdout.write("Enter amount to withdraw: "); // طلب مبلغ السحب 
      String? withdrawInput = stdin.readLineSync();
      int? amount = int.tryParse(withdrawInput ?? "");

      if (amount == null || amount <= 0) {
        print("Invalid amount");
      } else if (amount > balance) {
        print("Insufficient balance! Your current balance is $balance");
      } else {
        balance -= amount; // علشان اخصم المبلغ اللي سحبته من الرصيد 
        print("Withdrawal successful! Your current balance is $balance");
      }
    } else if (choice == 3) {
      // Deposit الايداع
      stdout.write("Enter amount to deposit: "); // طلب مبلغ الايداع 
      String? depositInput = stdin.readLineSync(); // ادخال المبلغ وقراءته 
      int? amount = int.tryParse(depositInput ?? "");

      if (amount == null || amount <= 0) { // لو الكمية اقل من الصفر او تساوي 
        print("Invalid amount");
      } else {
        balance += amount; // علشان اضيف اللي ضيفته علي اللي موجود 
        print("Deposit successful! Your current balance is $balance");
      }
    } else if (choice == 4) {
      // نخرج بقا 
      print("Thank you for using the ATM!");
      break; // قفلت البرنامج نهائي 
    } else {
      // Invalid choice
      print("Invalid choice");
    }
  }
}
