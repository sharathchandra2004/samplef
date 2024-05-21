import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
      body: Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/a person with a backpack looking at a cell phone.jpg"),
            fit: BoxFit.cover,
            ),
        ),
    //   appBar: AppBar(
    //     backgroundColor: const Color.fromARGB(255, 20, 2, 52),
    //     elevation: 0,
    //     centerTitle: true,
    //     title:const Text("Schedule Sympony",
    //     style: TextStyle(
    //       fontStyle: FontStyle.italic,
    //       fontWeight: FontWeight.bold,
    //       color: Color.fromARGB(255, 221, 218, 218)
    //     ),
    //   ),
    // ),
    
     child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 150, 15, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
            children: [
             
              // Add the main text
               Padding(
                padding:const EdgeInsets.symmetric(vertical: 270),
                child: Center(
                  child: Container(
                    height: 38,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(195, 104, 58, 183),
                      borderRadius: BorderRadius.circular(10),

                    ),
                    
                    child:const Center(
                      child: Text(
                        "SCHEDULE SYMPHONY",
                        style: TextStyle(
                          fontFamily: 'Schyler', 
                          color: Color.fromARGB(255, 255, 225, 0),
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0), // Add some space between texts
              // Existing button container
              Center(
                child: Container(

                  width: 400,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      // ignore: deprecated_member_use
                      elevation: MaterialStateProperty.all(20),
                      // ignore: deprecated_member_use
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 149, 76, 175),
                      ),
                      // ignore: deprecated_member_use
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
                      ),
                    ),
                    child:
                    const Text(
                      "G E T     S T A R T E D      ->",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "PS",
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/loginpage');
                    },
                  ),
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