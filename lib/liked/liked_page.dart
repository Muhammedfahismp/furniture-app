import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        
        
        Center(
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("you haven't nothing to favourite"),
              Icon(Icons.favorite_border)
            ],
          )
          
          ),
      
    );
  }
}