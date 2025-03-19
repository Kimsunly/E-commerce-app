import 'package:flutter/material.dart';

class ProductQuantityWithAddRemoveButton extends StatefulWidget {
  const ProductQuantityWithAddRemoveButton({super.key});

  @override
  ProductQuantityWithAddRemoveButtonState createState() =>
      ProductQuantityWithAddRemoveButtonState();
}

class ProductQuantityWithAddRemoveButtonState
    extends State<ProductQuantityWithAddRemoveButton> {
  int _quantity = 1;

  // Method to increment the quantity
  void _increment() {
    setState(() {
      _quantity++;
    });
  }

  // Method to decrement the quantity
  void _decrement() {
    setState(() {
      if (_quantity > 1) _quantity--; // Avoid going below 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: _decrement, // Decrease quantity
          icon: const Icon(Icons.remove),
        ),
        Text(
          '$_quantity', // Display current quantity
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        IconButton(
          onPressed: _increment, // Increase quantity
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
