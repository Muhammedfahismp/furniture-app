import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/widget/bottombar.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {




  @override
  Widget build(BuildContext context) {
    
    
    
    
    return Scaffold(

      body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(image: AssetImage("assets/virender-singh-hE0nmTffKtM-unsplash 1.png"),fit: BoxFit.cover)
        ),
        
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 160,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.transparent
            ),
            child: Text("   Find the best \n   home furniture for \n   your room.",style: TextStyle(
              color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400,letterSpacing: BorderSide.strokeAlignOutside 
            ),),
            
          ),
         

        ],
      ), 
      
      ),
      
      
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> Bottombar()));
        
        setState(() {
          
              
          
          
          
        });
       
      
       
        
      },
      
      child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
      backgroundColor: Color.fromARGB(255, 82, 116, 144),
      
      
      ),
      
      
    );
  }
}