import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次の画面'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Center(
          child: ElevatedButton(
            child: Text('戻る'),
            onPressed: () {
              //  画面遷移のコード
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
