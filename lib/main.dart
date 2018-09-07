import 'package:flutter/material.dart';
import 'package:random_pk/random_pk.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Color _backgroundColor = Colors.white;

  void _tap() {
    setState(() => _backgroundColor = RandomColor.next());
    }

  @override
  Widget build(BuildContext context){
    return GestureDetector(
        onTap: () => _tap(),
      child: Container(
        decoration: BoxDecoration(color: _backgroundColor),
        child: Center(
          child: Text('I want a job at Solid Software',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 20.0, color: Colors.black87)),
      ),
    )
    );
  }
}