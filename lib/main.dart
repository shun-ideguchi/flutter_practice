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
//   final items = List<String>.generate(10000, (i) => 'Item $i');
  final items = ['KBOY1', 'KBOY2', 'KBOY3', 'KBOY4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter'),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Column(
              children: [
                Expanded(
                  child: Image.asset('images/creative_mono.png'),
                ),
                Text('data'),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Image.asset('images/creative_mono.png'),
                ),
                Text('data'),
              ],
            ),
            Container(
              width: 160,
              color: Colors.red,
            ),
            Container(
              width: 160,
              color: Colors.blue,
            ),
            Container(
              width: 160,
              color: Colors.green,
            ),
            Container(
              width: 160,
              color: Colors.yellow,
            ),
            Container(
              width: 160,
              color: Colors.orange,
            ),
          ],
        ),
        // ListView.builder(
        //   itemCount: items.length,
        //   prototypeItem: ListTile(
        //     title: Text(items.first),
        //   ),
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       title: Text(items[index]),
        //     );
        //   },
        // ),
      ),
    );
  }
}
