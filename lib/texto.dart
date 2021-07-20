import 'dart:math';
import 'package:flutter/material.dart';

class texto extends StatefulWidget {
  const texto({Key? key}) : super(key: key);

  @override
  _textoState createState() => _textoState();
}

class _textoState extends State<texto> {
  TextEditingController _a = TextEditingController();
  TextEditingController _b = TextEditingController();
  String _valores = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("whatsapp Red Login"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: <Widget>[
            Image.asset("imagens/zapred.png"),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "Digite o Email"),
                maxLength: 64,
                controller: _a,
                onSubmitted: (String e) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "Digite a senha"),
                maxLength: 8,
                obscureText: true,
                onSubmitted: (String e) {},
                controller: _b,
              ),
            ),
            //ignore: deprecated_member_use
            RaisedButton(
              child: Text("Cadastrar"),
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {
                print("cadastro" + _a.text);
                print("cadastro" + _b.text);
              },
            ),
          ],
        ));
  }
}
