import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tapshyrma1"),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.greenAccent,
          child: Center(
            child: Text('data'),
          )),
      bottomNavigationBar: Container(
        height: 33,
        width: 44,
        color: Colors.red,
        child: Center(
          child: Text(
            'tubu',
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
            ),
          ),
        ),
      ),
    );
  }
}
