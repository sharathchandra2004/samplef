import 'package:flutter/material.dart';
import 'package:samplef/components/my_textfield.dart';

class Loginpage extends StatelessWidget {
   Loginpage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color.fromARGB(255, 184, 145, 234),
      // appBar: AppBar(title:const Text("2nd Page"), 
      // centerTitle: true,
      // ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 58.0),
        child: SafeArea(
          child: Center(
            child: Column(
              children:[
               const SizedBox(height: 30),
               const Icon(
                  Icons.calendar_today,
                  size:100,
                ),
                const SizedBox(height: 50),
                const Text(
                  "GET READY TO SCHEDULE !!",
                  style: TextStyle(
                    fontFamily:'PS',
                    fontSize: 22,
                    color: Color.fromARGB(255, 22, 22, 22)
                  ),
                ),
             const SizedBox(height: 25),
              Mytextfield(
                controller: usernameController,
                hintText:"Username or email address",
                obscureText: false,
              ),
        
             const SizedBox(height: 10),
              Mytextfield(
                controller: passwordController,
                hintText:"Password",
                obscureText: true,
              ),

             const Padding(
                padding:  EdgeInsets.symmetric(vertical:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("Forgot Password ?",
                    style: TextStyle(color: Color.fromARGB(234, 29, 28, 28)),
                    ),
                  ],
                ),
              ),
               const SizedBox(height: 25),
               Container(
                  width: 300,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                    // ignore: deprecated_member_use
                    elevation: MaterialStateProperty.all(20),
                     // ignore: deprecated_member_use
                    backgroundColor:  MaterialStateProperty.all(
                     const  Color.fromARGB(228, 180, 97, 210),
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
    );
  }
}
