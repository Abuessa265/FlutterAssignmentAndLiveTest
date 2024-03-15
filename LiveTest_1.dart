void main() {
  // Define a list of fruits as maps
  final fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];

  // Function to display fruit details
  void displayFruitDetails(List<Map<String, dynamic>> fruits) {
    for (var fruit in fruits) {
      print(
          'Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
    }
  }

  // Function to apply discount
  void applyPriceDiscount(List<Map<String, dynamic>> fruits, double dis) {
    for (var fruit in fruits) {
      final newPrice = fruit['price'] * (1 - dis / 100);
      fruit['price'] =
          newPrice.toStringAsFixed(2); // Update price with 2 decimal places
    }
  }

  // Print original fruit details
  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);

  // Apply 10% discount
  applyPriceDiscount(fruits, 10);

  // Print fruit details after discount
  print("Fruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}
