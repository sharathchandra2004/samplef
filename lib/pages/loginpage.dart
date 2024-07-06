import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget{
   const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1.0,
        color: Color.fromARGB(197, 9, 134, 192)
        ),
        borderRadius: BorderRadius.circular(5)
    );


    return   Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 2, 63, 91),
        
        elevation: 0,
        title: const Text("A sustaiable and valuable healthcare",
        style: TextStyle(
          color: Colors.white70,
          fontSize: 15,
        ),),
        centerTitle: true,         
      ),
      backgroundColor:const Color.fromARGB(255, 4, 75, 126),
        body:Container(
          width: 500,
          height: 950,
          decoration:const BoxDecoration(
            image:DecorationImage(image: AssetImage('images/TC.png'),
            fit: BoxFit.cover,
            alignment: Alignment.center,
            )
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text("Time Table Generator",
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Abril_FatFace',
                color: Color.fromARGB(248, 238, 237, 239),
              ),
            ),
        
            Container(
              padding: const EdgeInsets.symmetric(vertical: 35.0,horizontal: 23),
              margin:const EdgeInsets.symmetric(vertical: 0.0,horizontal: 8.0),
              color:const Color.fromARGB(83, 19, 98, 151),
              height: 100,
              width: 375,
              child: TextField(
                style:const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: " Username or gmail address",
                  hintStyle:const TextStyle(
                    color: Color.fromARGB(171, 0, 0, 0),
                    fontStyle: FontStyle.italic, 
                  ),
                  filled: true,
                  fillColor:const Color.fromARGB(255, 251, 251, 251),
                  focusedBorder: border,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20),
              margin:const EdgeInsets.symmetric(vertical: 0.0,horizontal: 8.0),
              color:const Color.fromARGB(83, 19, 98, 151),
              height: 90,
              width: 375,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: " Password",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(171, 0, 0, 0),
                    fontStyle: FontStyle.italic,
                  ),
                  filled: true,
                  fillColor:  Color.fromARGB(255, 251, 251, 251),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:20,horizontal: 0),
              child: ElevatedButton(onPressed: () {
                  if(kDebugMode){
                    print('button clicked');
                  }
              },
              style:TextButton.styleFrom(
                
                elevation:(15),
                backgroundColor:const Color.fromARGB(197, 19, 98, 151),
                foregroundColor:const Color.fromARGB(255, 255, 255, 255),
                fixedSize: const Size(375,55),
                shape:ContinuousRectangleBorder(borderRadius: BorderRadius.circular(5)),              
              ),
              child:const Text("Log in",
              style: TextStyle(
                fontFamily: 'Abril_Fatface',
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
              ),
              
              ),
            ),

          
          ],
        ),
      ), 
    );
  }
}