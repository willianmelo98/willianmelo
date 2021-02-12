import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/saldo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormularioDeposito extends StatelessWidget {
  static const _appBarDeposito = 'Receber deposito';

  static const _dicaCamporValor = '0.00';
  static const _rotuloCampoValor = 'Valor';
  static const _textoBotaoConfirmar = 'Confirmar';

  final TextEditingController _controladorCampoValor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarDeposito),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controlador: _controladorCampoValor,
              rotulo: _rotuloCampoValor,
              dica: _dicaCamporValor,
              icone: Icons.monetization_on,
            ),
            RaisedButton(
              child: Text(_textoBotaoConfirmar),
              onPressed: () {
                _criaDeposito(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _criaDeposito(context) {
    final double valor = double.tryParse(_controladorCampoValor.text);
    final depositoValido = _validaDeposito(valor);

    if (depositoValido) {

      _atualizaEstado(context,valor);
      Navigator.pop(context,);
    }
  }

  _validaDeposito(valor) {
      final _camporPreenchido = valor !=null;

      return _camporPreenchido;
  }
   
   _atualizaEstado(context,valor){
     // ignore: unnecessary_statements
     Provider.of<Saldo>(context,listen: false).adiciona(valor);
   }

}
