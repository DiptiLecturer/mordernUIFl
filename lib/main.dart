import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Modern UI Design ",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _Homepage();
}

class _Homepage extends State<HomePage> {
  int _selectedIndex = 0; //for bottom nav bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Modern UI Design")),
      body: Center(child: Text("Welcome")),
      bottomNavigationBar: BottomNavigationBar(currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items:const[
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ]
      ),

    );
  }
}
