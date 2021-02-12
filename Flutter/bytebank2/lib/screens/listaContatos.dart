import 'package:bytebank2/database/contatoDao.dart';
import 'package:bytebank2/models/contato.dart';
import 'package:bytebank2/screens/formulario_contatos.dart';
import 'package:flutter/material.dart';

class ListaContatos extends StatefulWidget {
  @override
  _ListaContatosState createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
    final ContatoDao _contatoDao = ContatoDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencia'),
      ),
      body: FutureBuilder<List<Contato>>(
        initialData: List(),
        future: _contatoDao.findAll(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Text("Carregando"),
                  ],
                ),
              );
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              final List<Contato> contatos = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, indice) {
                  final Contato contato = contatos[indice];
                  return _ItemContato(contato);
                },
                itemCount: contatos.length,
              );
              break;
          }
           return Text("Carregando");
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => FormularioContatos(),
                ),
              )
              .then((value) => setState(() {}));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class _ItemContato extends StatelessWidget {
  final Contato contato;

  const _ItemContato(this.contato);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contato.nome,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        subtitle: Text(
          contato.numeroConta.toString(),
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
