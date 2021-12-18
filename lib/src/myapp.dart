import 'package:flutter/material.dart';

//stateless widget or class
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //useing materialapp it's for android and web
    return MaterialApp(
      home: Scaffold(
        //creating an appbar have a centered title
        appBar: AppBar(
          title: Text("miran ali rashid"),
          centerTitle: true,
        ),
        //this is a body
        body: Container(
          color: Colors.black,
          child: Column(
            //make evrything in the column got to center verticaly
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                //adding text in a center of the screen
                child: Text(
                  "hi kurdistan",
                  //adding style and color to hi kurdistan text
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
              Center(
                //adding image from asstes/images folder and give it a size
                child: Image.asset(
                  'assets/images/Kurdistan_Flag_Map.png',
                  width: 200,
                  height: 200,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
