import 'package:flutter/material.dart';
import 'package:furniture_app/home/homescreen/home_screen.dart';

class SelectedItem extends StatefulWidget {
  const SelectedItem({super.key,required this.item});
  final HomeScreen item;


  @override
  State<SelectedItem> createState() => _SelectedItemState();
}

class _SelectedItemState extends State<SelectedItem> {

int count = 0;
int flag = 0;

void increment() {
  setState(() {
    if (count < 10) {
      count++;
    }
    if (count == 10) {
      flag = 1; 
    }
  });
}

void decrement() {
  setState(() {
    if (count > 0) {
      count--;
    }
    if (count == 0) {
      flag = 0; 
    }
  });
}

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined)))
        ],
      ),
      body: SingleChildScrollView(

        child: Expanded(
          child: Column(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage(widget.item.Image), fit: BoxFit.contain)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.item.text,
                      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      height: 31,
                      width: 115,
                      decoration: BoxDecoration(color: Colors.grey[350]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: decrement,
                              icon: const Icon(
                                Icons.remove,
                                size: 20,
                              )),
                          Text("$count"),
                          IconButton(
                              onPressed: increment,
                              icon: const Icon(
                                Icons.add,
                                size: 20,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: widget.item.color1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: widget.item.color2,
                      ),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: widget.item.color3,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    "Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused ue to the furniture help us relax for a longer time. "),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.item.price,
                      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 75, 119, 154),
                        ),
                        child: const Center(
                            child: Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
