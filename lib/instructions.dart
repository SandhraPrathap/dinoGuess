import 'package:dinoguess/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
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
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.black,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DinoGuess(),
                          ),
                        );
                        ;
                      },
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50),
                  Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(),
                    ),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Center(
                              child: Text(
                            '''Instructions:

    1.It's all about guessing the right number and you have to enter your guess in the space provided.

    2.If you guess right, you win.

    3.If you guess wrong, you can try again.

    4.If you need a hint, click the black button.
                                           ''',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          )),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
