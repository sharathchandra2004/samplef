import 'package:flutter/material.dart';
import 'package:samplef/pages/profilepage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
   int _selectedIndex=0;

   void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
      
    });
   }

  final List _pages =[
    const Mainpage(),

    const Profilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:_pages[_selectedIndex] ,
      backgroundColor:const Color.fromARGB(225, 1, 0, 2),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _navigateBottomBar ,     
      items:const [
        BottomNavigationBarItem(
          icon: Icon(Icons.android),
          label: 'Chatbot',
          ),   
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          ),
                  
      ],),
         appBar: AppBar(
        backgroundColor:const Color.fromARGB(225, 193, 143, 228),
        elevation: 0,
        centerTitle: true,
    ),
    
    drawer: Drawer(
      backgroundColor:const Color.fromARGB(255, 224, 228, 229),
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.all_inclusive_sharp,
              size:48
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
            child: ListTile(
              leading:const Icon(
                Icons.home,
                size: 32,      
              ),
              title:const Text("H O M E",
              style: TextStyle(
                fontFamily: "PS",
                fontSize: 15,
                fontWeight:FontWeight.bold,
              ),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/mainpage');           
              },
            ),
          ),
          Padding(
            padding:const   EdgeInsets.symmetric(vertical: 0,horizontal: 0),
            child:  ListTile(
              leading: const Icon(
                Icons.settings,
                size: 32,      
              ),
              title:const Text(
                "TEACHER TIMETABLE",
                style: TextStyle(
                  fontFamily: "PS",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context,'/table');
              },
            ),
          )
          
        ],
      ),
      
    ),
    );
  }
}