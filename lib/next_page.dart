import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  // initialize
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次の画面'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Center(
              child: ElevatedButton(
                child: Text('戻る'),
                onPressed: () {
                  //  画面遷移のコード
                  Navigator.pop(context, 'back test');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
