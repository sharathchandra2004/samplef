import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:  SizedBox(
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
          ), child:const Text(
            "Sign In",


          ),
           onPressed: (){
            Navigator.pushNamed(context, '/mainpage');
          },
        ),
      ),
    );
  }
}