import 'package:bytebank/models/transferencias.dart';
import 'package:bytebank/screens/transferencias/lista.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UltimasTransferencias extends StatelessWidget {
  final _titulo = 'Ultimas Transferencias';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          _titulo,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Consumer<Transferencias>(
          builder: (context, transferencias, child) {
            final _quantidade = transferencias.transferencias.length;
            int tamanho = 2;
            if (_quantidade == 0) {
              return SemTransferencias();
            }

            if (_quantidade < 2) {
              tamanho = _quantidade;
            }
            return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: tamanho,
              shrinkWrap: true,
              itemBuilder: (context, indice) {
                return ItemTransferencia(
                    transferencias.transferencias.reversed.toList()[indice]);
              },
            );
          },
        ),
        RaisedButton(
          child: Text("Ver todas Transferencias"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return ListaTransferencia();
              },
            ));
          },
        ),
      ],
    );
  }
}

class SemTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'Você ainda não cadastrou nenhuma transferencias',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
