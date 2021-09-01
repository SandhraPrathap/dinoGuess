import 'package:dinoguess/guess.dart';
import 'package:dinoguess/instructions.dart';
import 'package:flutter/material.dart';
import 'dart:math';

int a = 0;
void main() {
  runApp(MaterialApp(home: DinoGuess()));
}

int rand() {
  Random random = new Random();
  int blah = random.nextInt(100);
  return blah;
}

int b = -1;
TextEditingController guess = TextEditingController();

class DinoGuess extends StatefulWidget {
  @override
  _DinoGuessState createState() => _DinoGuessState();
}

class _DinoGuessState extends State<DinoGuess> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "DinoGuess",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              (a == 1)
                  ? Column(
                      children: [
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Enter your ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                              Text(
                                "Guess",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 24),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 80,
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 80, fontWeight: FontWeight.w300),
                            controller: guess,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.check),
                                  onPressed: () {
                                    int g = int.parse(guess.text);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => guessScreen(
                                                  guess: g,
                                                  target: b,
                                                )));
                                  },
                                ),
                                labelText: ''),
                          ),
                        ),
                      ],
                    )
                  : Container(
                      height: MediaQuery.of(context).size.width * 0.20,
                      width: MediaQuery.of(context).size.width * 0.40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextButton(
                          onPressed: () {
                            a = 1;
                            b = rand();
                            setState(() {});
                          },
                          child: Text(
                            "Start",
                            style: TextStyle(color: Colors.black, fontSize: 40),
                          ))),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      rand();
                      if (int.parse(guess.text) == b) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Instructions(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("image/black.png")),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Instructions(),
                        ),
                      );
                    },
                    child: Container(
                      height: 75,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("image/white.png")),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
