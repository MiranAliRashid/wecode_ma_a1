import 'package:flutter/material.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  bool emailval = false;
  TextEditingController password = TextEditingController();
  bool passwordval = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //adding backgoundcolor to the app bar
          backgroundColor: Colors.red,
          title: const Text("miran ali rashid"),
          centerTitle: true,
        ),
        body: Container(
          //set padding for all the page
          padding: const EdgeInsets.all(50),
          child: Form(
              child: Column(
            children: [
              Image.asset(
                "assets/images/Kurdistan_Flag_Map.png",
                width: 200,
                height: 200,
              ),
              //email input
              TextFormField(
                //addind controller
                controller: email,
                decoration: InputDecoration(
                    label: Text("Email"),
                    //validaite email
                    errorText: emailval ? 'Wrong Email' : null,
                    //adding icon
                    icon: Icon(Icons.email_outlined),
                    //addming outlined border
                    border: OutlineInputBorder()),
              ),
              //simple divider
              const Divider(
                color: Colors.transparent,
              ),
              //password input
              TextFormField(
                //adding controller
                controller: password,
                //not to show char's
                obscureText: true,
                decoration: InputDecoration(
                    label: Text("Password"),
                    //validaite password
                    errorText: passwordval ? 'Wrong Password' : null,
                    //addmin icon
                    icon: Icon(Icons.password_outlined),
                    //adding outline border
                    border: OutlineInputBorder()),
              ),
              const Divider(
                color: Colors.transparent,
              ),
              //login button
              SizedBox(
                //set size
                width: 200,
                height: 35,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (email.text != "mi@mi") {
                        emailval = true;
                      } else {
                        emailval = false;
                      }
                      if (password.text != "mi") {
                        passwordval = true;
                      } else {
                        passwordval = false;
                      }
                      if (emailval == false && passwordval == false) {
                        Navigator.pushNamed(context, "/view_image");
                      }
                    });
                  },
                  //adding backround color for login button
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: const Text(
                    //login button text
                    "login",
                    //login button style
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
