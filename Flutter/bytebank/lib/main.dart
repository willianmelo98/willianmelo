
import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/models/transferencias.dart';
import 'package:bytebank/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Saldo(0),
      ),
      ChangeNotifierProvider(
        create: (context) => Transferencias(),
      )
    ],
    child: BytebankApp(),
  ));
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      theme: ThemeData(
          primaryColor: Colors.grey[900],
          accentColor: Colors.deepOrangeAccent[700],
          buttonTheme: ButtonThemeData(
              buttonColor: Colors.deepOrangeAccent[700],
              textTheme: ButtonTextTheme.primary)),
    );
  }
}

// Criando um  objeto  para abstrair o codigo um pouco mais...
// Esse objeto traz os atributos do objeto transferencia, para representar  as variaveis mais simples
// que seram necessarios no codigo, como a variavel "valor" e a variavel "numeroConta"

// criando um widget que estancia o objeto transferencia.
// Esse objeto constroi um card com as informações do objeto
