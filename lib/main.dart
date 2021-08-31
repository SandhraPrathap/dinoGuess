import 'package:dinoguess/guess.dart';
import 'package:dinoguess/instructions.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: DinoGuess()));
}

int rand() {
  Random random = new Random();
  int blah = random.nextInt(100);
  return blah;
}

int b = rand();
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
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Enter your ",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Text(
                      "Guess",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 80,
                child: TextFormField(
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.w300),
                  controller: guess,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.check),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => guessScreen()));
                        },
                      ),
                      labelText: ''),
                ),
              ),
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
