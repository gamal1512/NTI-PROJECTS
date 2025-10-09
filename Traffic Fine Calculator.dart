import 'dart:io';

void main() {
  // Problem 2: Traffic Fine Calculator

  // ندخل السرعة المسموحة
  stdout.write("Enter speed limit: ");
  int speedLimit = int.parse(stdin.readLineSync()!);

  // ندخل السرعة الفعلية
  stdout.write("Enter actual speed: ");
  int actualSpeed = int.parse(stdin.readLineSync()!);

  // هل معاه رخصة؟
  stdout.write("Do you have a license? (yes/no): ");
  String licenseInput = stdin.readLineSync()!.toLowerCase();
  bool hasLicense = (licenseInput == "yes");

  int fine = 0;
  int overSpeed = actualSpeed - speedLimit;

  if (overSpeed > 20) {
    fine = 1000; // لو أكتر من 20
  } else if (overSpeed > 0) {
    fine = 500; // من 1 ل 20
  }

  if (!hasLicense) {
    fine += 500; // لو معندوش رخصة نزود 500
  }

  print("Total fine: $fine");
}
