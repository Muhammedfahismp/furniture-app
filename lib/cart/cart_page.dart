import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: 
        
        
        Center(
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("you haven't nothing to cart"),
              Icon(Icons.shopping_cart_outlined,)
            ],
          )
          
          ),

      
    );
  }
}