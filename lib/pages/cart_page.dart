import 'package:flutter/material.dart';

import '../cart_item.dart';

class CartPage extends StatefulWidget {
  final List<CartItem> cartItems;

  CartPage({required this.cartItems});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: widget.cartItems.length,
        itemBuilder: (context, index) {
          final item = widget.cartItems[index];
          return Dismissible(
            key: Key(index.toString()), // Use the index as a unique key
            onDismissed: (direction) {
              // Show a confirmation dialog
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Remove Item'),
                    content: Text('Are you sure you want to remove this item from the cart?'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('No'),
                        onPressed: () {
                          // If the user selects 'No', simply pop the dialog
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text('Yes'),
                        onPressed: () {
                          // If the user selects 'Yes', remove the item from the cart
                          setState(() {
                            widget.cartItems.removeAt(index);
                          });
                          // Close the dialog
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(16.0),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            child: ListTile(
              leading: Image.asset(item.imagePath),
              title: Text(item.name),
              subtitle: Text('Price: \$${item.price.toStringAsFixed(2)}'),
            ),
          );
        },
      ),
    );
  }
}
