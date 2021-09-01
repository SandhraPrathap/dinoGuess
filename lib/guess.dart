import 'package:dinoguess/main.dart' as main;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class guessScreen extends StatefulWidget {
  final int guess;
  final int target;

  const guessScreen({Key? key, required this.guess, required this.target})
      : super(key: key);
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
        child: (widget.target == widget.guess)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Heyyaaaaaaaaaa....You guessed right",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.width * 0.10,
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextButton(
                          onPressed: () {
                            main.a = 0;
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                builder: (context) => main.DinoGuess(),
                              ),
                            );
                          },
                          child: Text(
                            "Play Again",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ))),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (widget.target > widget.guess)
                      ? Text(
                          "You guessed Low",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      : Text(
                          "You guessed high",
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
