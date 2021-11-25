import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'home.dart';

class RegisterScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
            'Cadastro',
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

          /* Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.white,
            width: 300,
            height: 300,
          ), */
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: "Nome",
                  border: OutlineInputBorder()
              ),
            ),
          ),
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
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Matrícula",
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
            child: Text('CADASTRAR'),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 25, vertical: 11
                ),
                textStyle: TextStyle(fontSize: 14)
            ),
          ),
          ElevatedButton(
            child: Text('VOLTAR'),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()));
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