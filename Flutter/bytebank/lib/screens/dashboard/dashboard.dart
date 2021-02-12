import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/saldoCard.dart';
import 'package:bytebank/screens/deposito/formulario.dart';
import 'package:bytebank/screens/transferencias/formulario.dart';
import 'package:bytebank/screens/transferencias/lista.dart';
import 'package:bytebank/screens/transferencias/ultimasTransferencias.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  static String titulo = 'Bytebank';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text('Receber deposito'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return FormularioDeposito();
                      },
                    ));
                  }),
              RaisedButton(
                child: Text("Nova Transferencia"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                     return FormularioTransferencia();
                    },
                  ));
                },
              ),
            ],
          ),
          UltimasTransferencias()
        ],
      ),
    );
  }
}
