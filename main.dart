import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY REMOTE APP',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'MY REMOTE APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String statement = "";



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Center(
              child: Container(
                width: 370,
                height: 310,
                decoration: const BoxDecoration(color: Color.fromARGB(255, 199, 223, 235)),
                child: Center(
                  child: Column(
                    children: [
                    ElevatedButton(onPressed: () {
                          setState(() {
                            statement = "FORWARD";
                          });
                        }, child: const Text("FOWARD")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(onPressed: () {
                          setState(() {
                            statement = "Left";
                          });
                        }, child: const Text("Left")),
                        ElevatedButton(onPressed: () {
                          setState(() {
                            statement = "Right";
                          });
                        }, child: const Text("Right")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () {
                          setState(() {
                            statement = "Reverse";
                          });
                        }, child: const Text("Reverse")),
                      ],
                    ),
                    Text(statement)
                    ],
                  ),
                ),
              ),
            
            ),
            SizedBox(
          height: 60,
        ),
        ElevatedButton(onPressed: () {
          setState(() {
            statement = "Stop";
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
        ),
        child: const Text("STOP",
        style: TextStyle(fontSize: 24),
        )
        ),
        ],
      )
      );
  }

  void onPressed() {

  }
}
          
   