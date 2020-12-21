import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transferencias'),
        ),

        body:ListaTransferencias(),

        // ignore: missing_required_param
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    ),
  );
}

class Transferencia {

  final double valor;
  final int numeroConta;
  Transferencia(this.valor, this.numeroConta);


}




class ItemTransferencia extends StatelessWidget{
     
  final Transferencia _transferencia;

  const ItemTransferencia( this._transferencia);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
       
       return Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text(_transferencia.valor.toString()),
            subtitle: Text(_transferencia.numeroConta.toString()),
          ),
        );
  }

}



 class ListaTransferencias extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

      return Column(

        children: <Widget>[
            ItemTransferencia(Transferencia(10.0, 1000)),
            ItemTransferencia(Transferencia(20.0, 2000)),
            ItemTransferencia(Transferencia(30.0, 3000)),
           
        ],         
      );
  }


}

