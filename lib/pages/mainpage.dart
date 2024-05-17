import 'package:flutter/material.dart';


class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color.fromARGB(227, 186, 126, 228),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(227, 186, 126, 228),
        elevation: 0,
        centerTitle: true,
        title:const Text("Main Page",
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 0, 0)
        ),
      ),
    ),
    drawer: Drawer(
      backgroundColor: Color.fromARGB(255, 225, 223, 226),
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.all_inclusive_sharp,
              size:48
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListTile(
              leading:const Icon(
                Icons.home,
                size: 48,      
              ),
              title:const Text("H O M E"),
              onTap: () {
            
            
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: const ListTile(
              leading: Icon(
                Icons.settings,
                size: 48,      
              ),
              title: Text(
                "SETTINGS",
              ),
            ),
          )
          
        ],
      ),
      
    ),
    );
  }
}