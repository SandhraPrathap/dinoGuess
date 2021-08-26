import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: DinoGuess()));
}

class DinoGuess extends StatefulWidget {
  @override
  _DinoGuessState createState() => _DinoGuessState();
}

class _DinoGuessState extends State<DinoGuess> {
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
                  child: TextFormField(
                    style: TextStyle(fontSize: 85,fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: ''),
                  ),
                ),    
                      IconButton(onPressed:(){}, icon:(Image.asset("image/icon6.png")),iconSize:150,),                                    
                       IconButton(onPressed:(){}, icon:(Image.asset("image/icon5.png")),iconSize:150,)
                         ],),
            ),
          ),
        );
  }
}
