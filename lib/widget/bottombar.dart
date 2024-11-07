import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/cart/cart_page.dart';
import 'package:furniture_app/home/home_page.dart';
import 'package:furniture_app/liked/liked_page.dart';
import 'package:furniture_app/profile/profile_page.dart';
import 'package:furniture_app/scanner/scanner.dart';

class Bottombar extends StatefulWidget {
  Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int selectedindex = 0;
  List page = [
    HomePage(),
    LikedPage(),
    Scanner(), 
    CartPage(), 
    ProfilePage()
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(





        body: page[selectedindex],

        




        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 300),

          items: [
            Image.asset("assets/home.png"),
            Image.asset("assets/heart.png"),
            Image.asset("assets/scan.png"),
            // CircleAvatar(
            //   radius: 35,
            //   backgroundColor: Color.fromARGB(255, 152, 202, 243),
            //   child: Image.asset(""),
            // ),
            Image.asset("assets/cart.png"),
            Image.asset("assets/Account.png"),

            // Icon(Icons.home),
            // Icon(Icons.favorite),
            // Icon(Icons.qr_code_scanner_sharp),
            // Icon(Icons.add_shopping_cart_rounded),
            // Icon(Icons.person)
          ],
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blue.shade100,

          // currentIndex: selectedindex,

          onTap: (indexvalue) {
            setState(() {
              selectedindex = indexvalue;
            });
          },
        ));
  }
}
