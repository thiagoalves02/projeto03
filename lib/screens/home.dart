import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'login.dart';
import 'payment.dart';
import 'class.dart';
import 'schedule.dart';

class HomeScreen extends StatelessWidget{
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
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.exit_to_app,
              size: 25,
              color: Colors.white,
            ),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          )
        ],
      ),
      body: Center(

        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child:Image.asset("assets/logo.png", height: 150, width: 150),
        ),

          /* Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.white,
            width: 300,
            height: 300,
          ), */
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child:ElevatedButton(
              child: Text('Horário de Aula'),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => ScheduleScreen()));
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 25, vertical: 11
                  ),
                  textStyle: TextStyle(fontSize: 14)
              ),
            ),
          ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child:ElevatedButton(
            child: Text('Disciplinas'),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => ClassScreen()));
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 25, vertical: 11
                ),
                textStyle: TextStyle(fontSize: 14)
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child:ElevatedButton(
            child: Text('Boletos'),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PaymentScreen()));
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 25, vertical: 11
                ),
                textStyle: TextStyle(fontSize: 14)
            ),
          ),
        ),
        ],
      ),
      ),
    );
  }
}