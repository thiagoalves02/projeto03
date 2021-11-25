import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'login.dart';
import 'home.dart';

class PaymentScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
            'Boletos',
            style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white)
        ),
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.arrow_back,
              size: 25,
              color: Colors.white,
            ),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          )
        ],
      ),
      body: Center(

        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text(
                'Mês Referente: Dezembro/2021',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Image.asset("assets/boleto.png", height: 300, width: 300),
            ElevatedButton(
              child: Text('IMPRIMIR'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 25, vertical: 11
                  ),
                  textStyle: TextStyle(fontSize: 14)
              ),
            ),
          ],
        ),
      ),
    );
  }
}