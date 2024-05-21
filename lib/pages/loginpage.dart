import 'package:flutter/material.dart';
import 'package:samplef/pages/userlogin.dart';
import 'dart:convert';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String url = '';
  var data;
  String output='Initial Output';

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color.fromARGB(241, 150, 117, 206),
      // appBar: AppBar(title:const Text("2nd Page"), 
      // centerTitle: true,
      // ),
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10,30,10,0),
              child: Column(
                children:[
                 const SizedBox(height: 45),
                 const Icon(
                    Icons.calendar_today,
                    size:85,
                  ),
                  const SizedBox(height:40),
                  const Text(
                    "STUDENT LOG IN",
                    style: TextStyle(
                      fontFamily:'PS',
                      fontSize: 30,
                      color: Color.fromARGB(255, 22, 22, 22)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
                    child: Container(
                      width: 250,
                      height: 45,
                      child: ElevatedButton(
                        style: ButtonStyle(
                        // ignore: deprecated_member_use
                        elevation: MaterialStateProperty.all(20),
                         // ignore: deprecated_member_use
                        backgroundColor:  MaterialStateProperty.all(
                         Color.fromARGB(227, 49, 7, 65),
                          ),
                        ), 
                        child:const Text("Log in as a Teacher",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "PS",
                          fontSize: 18,                  
                        ),),
                         onPressed: (){
                          Navigator.pop(context);
                            Navigator.pushNamed(context, '/home1');
                         },
                        ),
                     ),
                  ),  
                 Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(    
                      onChanged: (value1){

                      },               
                      controller: usernameController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: "Username",
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 180, 177, 177)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        errorText: "Enter proper info", // Example error message
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(234, 206, 203, 203),
                        ),
                      ),
                    ),
                  ),
                                    const SizedBox(height: 15),
                  // Password Text Field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      onChanged: (value){
                        "http://10.0.2.2:5000/user="+usernameController.text+"pass="+passwordController.text.toString();
                      },
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 180, 177, 177)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(0 ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        errorText: "", // Example error message
                        hintStyle: const TextStyle(
                          color: Color.fromARGB(234, 206, 203, 203),
                        ),
                      ),
                    ),
                  ),
     
               
               const Padding(padding: EdgeInsets.all(10.0),
                 child:  Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                      Text("Forgot Password ?",
                     style: TextStyle(color: Color.fromARGB(234, 29, 28, 28)),
                     ),
                   ],
                 ),
               ),
                 const SizedBox(height: 15),
                 Container(
                    width: 300,
                    height: 60,
                    child: ElevatedButton(
                      
                      style: ButtonStyle(
                      // ignore: deprecated_member_use
                      elevation: MaterialStateProperty.all(20),
                       // ignore: deprecated_member_use
                      backgroundColor:  MaterialStateProperty.all(
                       Color.fromARGB(226, 46, 14, 57),
                        ),
                      ), 
                      child:const Text("Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "PS",
                        fontSize: 18,                  
                      ),),
                       onPressed: ()async{
                          data = await jsonDecode(fetcdata(url));
                          setState(() {
                            if(output=="true"){
                              Navigator.pushNamed(context, '/mainpage');
                            }
                            else{
                              output = "Invalid ";
                            }
                            
                          });
                       },
                      ),
                   ),        
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
