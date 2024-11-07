import 'package:flutter/material.dart';

class HomeScreen {
  final String? name;
  final String? Icons;
  final String Image;
  final String text;
  final String price;
  final Color color1;
  final Color color2;
  final Color color3;

  HomeScreen(
      {this.name,
      this.Icons,
      required this.Image,
      required this.text,
      required this.price,
      required this.color1,
      required this.color2,
      required this.color3});
}

List<HomeScreen> homeData = [
  HomeScreen(
      name: "ALL",
      Image: "assets/sofa (1).png",
      text: "Room Sofa",
      price: "₹2500",
      color1: Colors.blue,
      color2: Colors.black38,
      color3: Colors.tealAccent),
  HomeScreen(
      Icons: "assets/sofa-with-armrest-svgrepo-com 1.png",
      Image: "assets/image 1.png",
      text: "Toshiba Tv",
      price: "₹32500",
      color1: Colors.yellow,
      color2: Colors.red,
      color3: Colors.orange),
  HomeScreen(
      Icons: "assets/tv-solid-svgrepo-com 1.png",
      Image: "assets/kisspng-lighting-lamp-table-lamp-5a8bf96bc692e6 1.png",
      text: "Table Lamp",
      price: "₹550",
      color1: Colors.brown,
      color2: Colors.grey,
      color3: Colors.lightBlue),
  HomeScreen(
      Icons: "assets/table-lights-svgrepo-com 1.png",
      Image:
          "assets/kisspng-table-furniture-eames-lounge-chair-matbord-5adbc36d235a50 1.png",
      text: "Wood Table",
      price: "₹750",
      color1: Colors.green,
      color2: Colors.indigo,
      color3: Colors.redAccent),
  HomeScreen(
      Icons: "assets/table-lights-svgrepo-com 1.png",
      Image:
          "assets/kisspng-table-furniture-eames-lounge-chair-matbord-5adbc36d235a50 1.png",
      text: "Wood Table",
      price: "₹720",
      color1: const Color.fromARGB(255, 139, 158, 173),
      color2: const Color.fromARGB(96, 77, 24, 24),
      color3: const Color.fromARGB(255, 11, 142, 112)),
  HomeScreen(
      Icons: "assets/table-lights-svgrepo-com 1.png",
      Image: "assets/sofa (1).png",
      text: "Room Sofa",
      price: "₹2500",
      color1: Colors.yellowAccent,
      color2: Colors.greenAccent,
      color3: Colors.teal),
];
