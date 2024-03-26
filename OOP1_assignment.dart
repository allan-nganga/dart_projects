import 'dart:io';

// Interface for items that can be sold
abstract class Sellable {
  String getName();
  double getPrice();
}

// Base class for all items in the inventory
class InventoryItem implements Sellable {
  String name;
  double price;

  InventoryItem(this.name, this.price);

  @override
  String getName() {
    return name;
  }

  @override
  double getPrice() {
    return price;
  }
}

// Derived class representing books in the inventory
class Book extends InventoryItem {
  String author;

  Book(String name, double price, this.author) : super(name, price);

  // Override getPrice method to apply discount for books
  @override
  double getPrice() {
    // Apply 10% discount for books
    return super.getPrice() * 0.9;
  }
}

void main() {
  // Initialize inventory from a file
  List<Book> inventory = initializeInventory('inventory.txt');

  // Display inventory
  print('Inventory:');
  for (var book in inventory) {
    print('Title: ${book.getName()}, Author: ${book.author}, Price: \$${book.getPrice().toStringAsFixed(2)}');
  }

  // Demonstrate loop to find a book by author
  String searchAuthor = 'J.K. Rowling';
  print('\nSearching for books by $searchAuthor:');
  for (var book in inventory) {
    if (book.author == searchAuthor) {
      print('Title: ${book.getName()}, Author: ${book.author}, Price: \$${book.getPrice().toStringAsFixed(2)}');
    }
  }
}

// Function to initialize inventory from a file
List<Book> initializeInventory(String filename) {
  List<Book> inventory = [];
  try {
    File file = File(filename);
    List<String> lines = file.readAsLinesSync();

    for (var line in lines) {
      List<String> data = line.split(',');
      if (data.length == 3) {
        String name = data[0].trim();
        double price = double.parse(data[1].trim());
        String author = data[2].trim();
        inventory.add(Book(name, price, author));
      }
    }
  } catch (e) {
    print('Error initializing inventory: $e');
  }
  return inventory;
}
