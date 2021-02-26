import 'package:bytebank2/screens/ListaContatos.dart';
import 'package:bytebank2/screens/lista_transa%C3%A7%C3%B5es.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _FeatureItem(
                  'Transferencia',
                  Icons.monetization_on,
                  onClick: () {
                    _mostrarListaContatos(context);
                  },
                ),
                _FeatureItem(
                  'extrato transações',
                  Icons.description,
                  onClick: () {
                    _mostrarListaTransacoes(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _mostrarListaContatos(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ListaContatos(),
      ),
    );
  }

  _mostrarListaTransacoes(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ListaTransacoes(),
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String nome;
  final IconData icone;
  final Function onClick;

  const _FeatureItem(this.nome, this.icone, {@required this.onClick});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
            onTap: () {
              onClick();
            },
            child: Container(
              width: 120,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icone,
                    color: Colors.white,
                    size: 24,
                  ),
                  Text(
                    nome,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
