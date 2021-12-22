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
          //adding backgoundcolor to the app bar
          backgroundColor: Colors.red,
          title: const Text("miran ali rashid"),
          centerTitle: true,
        ),
        //this is a body
        body: Container(
          color: Colors.black,
          child: Column(
            //make evrything in the column got to center verticaly
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                //adding text in a center of the screen
                child: Text(
                  "hi kurdistan",
                  //adding style and color to hi kurdistan text
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
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
              ),
              Center(
                child: SizedBox(
                  width: 150,
                  height: 35,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: const Text(
                      "start",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
