import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 10;
  int _currentIndex = 0;
  String name = "James";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hotel App"),),

      floatingActionButton: FloatingActionButton(
        onPressed:() {
          setState(() {
            num += 1;
          });
        },
        backgroundColor: Colors.cyan.shade700,
        child: Icon(Icons.add),
      ),

      body: Center(
        child: Container(
          child: Text("$num $name"),

        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
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
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

    );
  }
}



