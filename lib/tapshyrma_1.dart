import 'package:flutter/material.dart';
import 'package:flutter_application_1/tapshyrma2.dart';

class Tapshyrma1 extends StatefulWidget {
  const Tapshyrma1({Key? key}) : super(key: key);

  @override
  _Tapshyrma1State createState() => _Tapshyrma1State();
}

class _Tapshyrma1State extends State<Tapshyrma1> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Tapshyrma 01',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   height: 60,
          //   width: 250,
          //   color: Colors.blueAccent,
          //   child: Center(
          //     child: Text('data')),
          // ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Tapshyrma2(kelgenSan: number.toString());
                  },
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff46F3F3),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 120.0, vertical: 15.0),
                child: Text(
                  'san: ${number.toString()}',
                  style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
         const   SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  number--;
                  setState(() {});
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    elevation: 1,
                    primary: Color(0xff005EA6),
                    padding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
              ),
            const  SizedBox(
                width: 38.0,
              ),
              ElevatedButton(
                onPressed: () {
                  number++;
                  setState(() {});
                },
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    elevation: 1,
                    primary: Color(0xff005EA6),
                    padding: const
                        EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
