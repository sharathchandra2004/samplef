import 'package:flutter/material.dart';
import 'package:samplef/components/my_textfield.dart';

class Home1 extends StatelessWidget {
   Home1({super.key});

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
                    "TEACHER LOG IN",
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
                        backgroundColor:  MaterialStateProperty.all(const Color.fromARGB(227, 49, 7, 65),
                          ),
                        ), 
                        child:const Text("Log in as a Student",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "PS",
                          fontSize: 18,                  
                        ),),
                         onPressed: (){
                          Navigator.pop(context);
                            Navigator.pushNamed(context, '/loginpage');
                         },
                        ),
                     ),
                  ),  
                     
               const SizedBox(height: 25),
                Mytextfield(
                  controller: usernameController,
                  hintText:"Username or email address",
                  obscureText: false,
                ),
                    
               const SizedBox(height: 15),
                Mytextfield(
                  controller: passwordController,
                  hintText:"Password",
                  obscureText: true,
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
                       onPressed: (){
                          Navigator.pushNamed(context, '/mainpage');
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
