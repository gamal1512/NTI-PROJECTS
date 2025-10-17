import 'dart:io';
// j
void main() {
  print("Welcome to Smart Grocery System");
  List<Map<String, dynamic>> products = [];
  Map<String, Map<String, dynamic>> invoices = {};
  int invoiceCount = 0;
  while (true) {
    print("\nPress 1 to add new product");
    print("Press 2 to show all products");
    print("Press 3 to update product quantity");
    print("Press 4 to buy products");
    print("Press 5 to show all invoices");
    print("Press 6 to exit");
    stdout.write("input => ");
    String? choice = stdin.readLineSync();
    if (choice == '1') {
      stdout.write("Enter product name: ");
      String name = stdin.readLineSync()!;
      stdout.write("Enter price: ");
      double price = double.parse(stdin.readLineSync()!);
      stdout.write("Enter quantity: ");
      int qty = int.parse(stdin.readLineSync()!);
      products.add({"name": name, "price": price, "qty": qty});
      print("Product added successfully!");
    }
    else if (choice == '2') {
      if (products.isEmpty) {
        print("No products available!");
      } else {
        print("\nProducts List:");
        for (int i = 0; i < products.length; i++) {
          print(
              "${i + 1}. ${products[i]['name']} - Price: ${products[i]['price']} - Qty: ${products[i]['qty']}");
        }
      }
    }
    else if (choice == '3') {
      stdout.write("Enter product name to update: ");
      String name = stdin.readLineSync()!;
      bool found = false;
      for (var item in products) {
        if (item['name'].toLowerCase() == name.toLowerCase()) {
          stdout.write("Enter new quantity: ");
          item['qty'] = int.parse(stdin.readLineSync()!);
          print("Quantity updated successfully!");
          found = true;
          break;
        }
      }
      if (!found) print("Product not found!");
    }
    else if (choice == '4') {
      if (products.isEmpty) {
        print("No products to buy!");
        continue;
      }
      stdout.write("Enter your name: ");
      String customer = stdin.readLineSync()!;
      List<Map<String, dynamic>> cart = [];
      double total = 0;
      while (true) {
        stdout.write("Enter product name (or 'done' to finish): ");
        String productName = stdin.readLineSync()!;
        if (productName.toLowerCase() == 'done') break;
        var product = products.firstWhere(
            (p) => p['name'].toLowerCase() == productName.toLowerCase(),
            orElse: () => {});
        if (product.isEmpty) {
          print("Product not found!");
          continue;
        }
        stdout.write("Enter quantity: ");
        int qty = int.parse(stdin.readLineSync()!);
        if (qty > product['qty']) {
          print("❌ Not enough stock!");
        } else {
          double price = product['price'];
          double totalItem = price * qty;
          product['qty'] -= qty;
          cart.add({
            "name": product['name'],
            "qty": qty,
            "price": price,
            "total": totalItem
          });
          total += totalItem;
          print("🛍️ Added $qty x ${product['name']} to your cart");
        }
      }
      if (cart.isNotEmpty) {
        invoiceCount++;
        invoices["Invoice #$invoiceCount"] = {
          customer: cart,
          "final_total": total
        };
        print("\nYour total = $total");
        print("🧾 Invoice saved successfully!");
      } else {
        print("No items purchased.");
      }
    }
    else if (choice == '5') {
      if (invoices.isEmpty) {
        print("No invoices found!");
      } else {
        print("\nAll Invoices:");
        invoices.forEach((inv, data) {
          print("\n$inv:");
          String customer = data.keys.first;
          print("Customer: $customer");
          print("Items:");
          for (var item in data[customer]) {
            print("- ${item['name']} x${item['qty']} = ${item['total']}");
          }
          print("Total = ${data['final_total']}");
        });
      }
    }
    else if (choice == '6') {
      print("\n🫶 Thank you for shopping with us!");
      break;
    }
    else {
      print("Invalid choice, please try again!");
    }
  }
}
