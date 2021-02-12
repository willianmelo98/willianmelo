import 'package:bytebank2/database/contatoDao.dart';
import 'package:bytebank2/models/contato.dart';
import 'package:flutter/material.dart';

class FormularioContatos extends StatefulWidget {

  @override
  _FormularioContatosState createState() => _FormularioContatosState();
}

class _FormularioContatosState extends State<FormularioContatos> {
  final TextEditingController nomeController = TextEditingController();

  final TextEditingController numeroContaController = TextEditingController();
    final ContatoDao _contatoDao = ContatoDao();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Criar Contato',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nomeController,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
              style: TextStyle(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: numeroContaController,
                decoration: InputDecoration(
                  labelText: 'Numero',
                ),
                style: TextStyle(fontSize: 24), 
                keyboardType: TextInputType.phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: RaisedButton(
                  onPressed: () {
                    final nome = nomeController.text;
                    final numeroConta =  int.tryParse(numeroContaController.text);
                    final Contato novoContato = Contato(0,nome, numeroConta);

                    _contatoDao.save(novoContato).then((id) => Navigator.pop(context));

                   

                  },
                  child: Text('Criar'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
