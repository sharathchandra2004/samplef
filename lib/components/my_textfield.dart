import'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final bool isNotValidate;

  const Mytextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.isNotValidate = false,
    });

  @override
  Widget build(BuildContext context) {
    return   Padding(
              padding:const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: controller,
                obscureText:obscureText,
                decoration:  InputDecoration(
                  enabledBorder:const OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 180, 177, 177)),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderSide:const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: hintText,
                    errorText: isNotValidate?"Enter proper info":null,
                    hintStyle:const TextStyle(
                      color: Color.fromARGB(234, 206, 203, 203)
                    ),
                ),
              
              ),
            );
  }
}