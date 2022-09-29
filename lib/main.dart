import 'package:flutter/material.dart';
import 'classes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ampel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  Lamp lamp = Lamp(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              height: 300,
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(""),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: lamp.lampState == "red" ||
                              lamp.lampState == "redYellow"
                          ? Colors.red
                          : Color.fromARGB(0, 131, 122, 122),
                    ),
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    child: Text(""),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: lamp.lampState == "yellow" ||
                              lamp.lampState == "redYellow"
                          ? Colors.yellow
                          : Color.fromARGB(0, 131, 122, 122),
                    ),
                    height: 60,
                    width: 60,
                  ),
                  Container(
                    child: Text(""),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: lamp.lampState == "green"
                          ? Colors.green
                          : Color.fromARGB(0, 131, 122, 122),
                    ),
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    lamp.click();
                  });
                },
                child: Text("Schalten"))
          ],
        ),
      ),
    );
  }
}
