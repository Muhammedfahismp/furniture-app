import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/home/homescreen/home_screen.dart';
import 'package:furniture_app/home/homescreen/selected_item.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded))],

        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Row(children: [
            Text(
              "   Find the home \n   furniture",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            )
          ]),

          SizedBox(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                controller: ScrollController(),
                itemCount: homeData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("${homeData[index].Icons}"))),
                        child: Center(

                            child: homeData[index].name != null ?
                            Text(

                        "${homeData[index].name}",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ): null
                        
                        ),
                      ),
                    ),
                  );
                }),
          ),

          // Container(
          //     height: 130,
          //     width: 100,
          //     decoration: BoxDecoration(
          //       color: Colors.amber,
          //       borderRadius: BorderRadius.circular(15)
          //     ),
          //     child: Center(child: Text("ALL")),

          // )

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,mainAxisSpacing: 10),
                  itemCount: homeData.length,
              itemBuilder: (context, index) {
                return 
                
                InkWell(onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedItem(item:homeData[index] ,),));
                 
                },
                  child: Container(
                              height: 200,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Stack(
                  
                                children: [
                  
                  Positioned(
                    bottom: -1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                                        
                        ),
                      
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                        onPressed: (){},
                        icon:
                         Icon(Icons.favorite_border_outlined,color: Colors.black,),
                         ),
                      
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(onTap: () {
                              setState(() {
                              });
                                                      },
                              child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Color.fromARGB(255, 126, 163, 194),
                              child: Icon(Icons.add,color: Colors.white,),
                                                       ),
                                                      ),
                            )
                          ],
                        ),
                                        
                      ),
                    ),
                  ),
                   Positioned(
                    top: -1,
                  
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(homeData[index].Image),
                  
                    ),
                  
                    ),
                  
                    // Positioned(
                    //   right: 25,
                    //   top: 30,
                    //   child: IconButton(
                    //   onPressed: (){},
                    //   icon:
                    //    Icon(Icons.favorite_border_outlined,color: Colors.black,),
                    //    ),
                    //    ),
                  
                    Positioned(
                      bottom: 50,
                      left: 10,
                  
                      child: Text(homeData[index].text),
                      ),
                  
                    Positioned(
                      bottom: 30,
                      left: 10,
                      child: CircleAvatar(
                        backgroundColor: homeData[index].color1,
                        radius: 8,
                      ),
                      ),
                  
                       Positioned(
                      bottom: 30,
                      left: 30,
                      child: CircleAvatar(
                        backgroundColor: homeData[index].color2,
                        radius: 8,
                      ),
                      ),
                  
                       Positioned(
                      bottom: 30,
                      left: 50,
                      child: CircleAvatar(
                        backgroundColor: homeData[index].color3,
                        radius: 8,
                      ),
                      ),
                  
                       Positioned(
                      bottom: 5,
                      left: 17,
                      child: Text(homeData[index].price),
                  
                      ),
                  
                      // Positioned(
                      //   right: 30,
                      //   bottom: 3,
                      //   child: InkWell(onTap: () {
                      //     setState(() {
                      //     });
                      //   },
                      //     child: CircleAvatar(
                      //     radius: 20,
                      //     backgroundColor: Color.fromARGB(255, 126, 163, 194),
                      //     child: Icon(Icons.add,color: Colors.white,),
                      //    ),
                      //   ))
                                ],
                  
                              ),
                  
                            ),
                );
                
                
              },

            ),
          ),

          
        ],
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
