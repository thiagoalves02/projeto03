import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'register.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
            'Login',
            style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white)
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/logo.png", height: 150, width: 150),

          /* Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.white,
            width: 300,
            height: 300,
          ), */
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "E-mail",
                  border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child:TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder()
              ),
              obscureText: true,
            ),
          ),
          ElevatedButton(
            child: Text('ENTRAR'),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 17, vertical: 11
                ),
                textStyle: TextStyle(fontSize: 14)
            ),
          ),
          ElevatedButton(
            child: Text('CADASTRAR-SE'),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 25, vertical: 11
                ),
                textStyle: TextStyle(fontSize: 14)
            ),
          ),
        ],
      ),
    );
  }
}