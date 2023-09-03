// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print("HelloWorld");
    });
  }

  String text = '次へ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Text(
                'KBOY',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 70,
                  // color: Colors.green,
                  // fontWeight: FontWeight.bold,
                  // fontStyle: FontStyle.italic,
                  //   decoration: TextDecoration.underline,
                  //   foreground: Paint()
                  //     ..style = PaintingStyle.stroke
                  //     ..strokeWidth = 3
                  //     ..color = Colors.blue,
                ),
              ),
            ),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
              ),
              child: Column(
                children: [
                  Text('ジーコさん'),
                  Text('ジーコさん'),
                  Text('ジーコさん'),
                ],
              ),
            ),
            Text('ジーコさん'),
          ],
        ),
      ),
    );
  }
}
