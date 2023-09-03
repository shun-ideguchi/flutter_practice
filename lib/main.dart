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

  final myFocusNode = FocusNode();

  String name = '初期値';

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KBOYのFlutter'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: '名前',
              ),
              onChanged: (text) {
                name = text;
                print('First text field: $name (${name.characters.length})');
              },
            ),
            TextField(
              controller: myController,
              focusNode: myFocusNode,
              decoration: InputDecoration(
                hintText: '趣味',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // // TODO: ここにフォーカスするためのコード
                // myFocusNode.requestFocus();
                // print(myController.text);
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(myController.text),
                      );
                    });
              },
              child: Text('新規登録する'),
            )
          ],
        ),
      ),
    );
  }
}
