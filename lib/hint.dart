import 'package:dinoguess/main.dart' as main;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HintScreen extends StatefulWidget {
  final int target;

  const HintScreen({Key? key, required this.target}) : super(key: key);
  @override
  _HintScreenState createState() => _HintScreenState();
}

class _HintScreenState extends State<HintScreen> {
  int i = 0;
  int prime(int m) {
    for (i = 2; i < 100; i++) {
      if (m % i == 0 && m != i) return i;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.15,
                0.5,
                1
              ],
                  colors: [
                Color.fromRGBO(0, 255, 240, 100),
                Color.fromRGBO(21, 175, 166, 100),
                Color.fromRGBO(44, 91, 89, 100),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (prime(widget.target) == 0)
                  ? Text(
                      "The number is prime",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  : Text(
                      "The number is a factor of $i",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
              IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => main.DinoGuess(),
                    ),
                  );
                },
                icon: Icon(Icons.refresh_outlined),
                iconSize: 30,
                color: Colors.white,
              ),
            ],
          )),
    );
  }
}
