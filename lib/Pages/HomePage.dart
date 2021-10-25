import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hotel App"),),

      body: Center(
        child: Container(
          child: Text("My APP"),

        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              backgroundColor: Colors.cyan
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              backgroundColor: Colors.cyan
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text("Camera"),
              backgroundColor: Colors.cyan
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              backgroundColor: Colors.cyan
          ),
        ],
      ),

    );
  } 
}



