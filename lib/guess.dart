import 'package:dinoguess/main.dart' as main;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class guessScreen extends StatefulWidget {
  @override
  _guessScreenState createState() => _guessScreenState();
}

class _guessScreenState extends State<guessScreen> {
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
            (main.b > int.parse(main.guess.text))
                ? Text(
                    "You guessed Low",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                : (main.b < int.parse(main.guess.text))
                    ? Text(
                        "You guessed high",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )
                    : Text(
                        "Heyyaaaaaaaaaa....You guessed right",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
            IconButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => main.DinoGuess(),
                  ),
                );
                ;
              },
              icon: Icon(Icons.refresh_outlined),
              iconSize: 30,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
