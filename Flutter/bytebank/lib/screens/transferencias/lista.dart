import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/models/transferencias.dart';
import 'package:bytebank/screens/transferencias/formulario.dart';
import 'package:bytebank/screens/transferencias/ultimasTransferencias.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  const ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.toStringConta()),
        subtitle: Text(_transferencia.toStringValor()),
      ),
    );
  }
}

// Classe para listar e passar os valores dos objetos atraves de parametros.

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencias'),
      ),
      body: Consumer<Transferencias>(
        builder: (context, transferencias, child) {
          if(transferencias.transferencias.length ==0){
            return SemTransferencias();
          }
          return ListView.builder(
            itemCount: transferencias.transferencias.length,
            itemBuilder: (context, indice) {
              final transferencia =  transferencias.transferencias[indice];
              return ItemTransferencia(transferencia);
            },
          );
        },
      ),
      floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FormularioTransferencia();
                  }));
                },
              )),
    );
  }
 }
