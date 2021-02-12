import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/models/transferencias.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  static const _dicaCamporValor = '0.00';
  static const _rotuloCampoValor = 'Valor';
  static const _textoBotaoConfirmar = 'Confirmar';
  static const _rotuloCampoConta = 'Numero Conta';
  static const _dicaNumeroConta = '0000';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando Transferencia"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controlador: _controladorCampoNumeroConta,
              rotulo: _rotuloCampoConta,
              dica: _dicaNumeroConta,
            ),
            Editor(
              controlador: _controladorCampoValor,
              rotulo: _rotuloCampoValor,
              dica: _dicaCamporValor,
              icone: Icons.monetization_on,
            ),
            RaisedButton(
              child: Text(_textoBotaoConfirmar),
              onPressed: () {
                _criaTransferencia(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);

    final transferenciaValida = _validaTransferencia(context,numeroConta, valor);

    if (transferenciaValida) {
      final novaTransferencia = Transferencia(numeroConta, valor);

      _atualizaEstado(context, novaTransferencia, valor);
      Navigator.pop(context);
    }
  }

  _validaTransferencia(context,numeroConta, valor) {
    final _camposPreenchidos = numeroConta != null && valor != null;
    final _saldoSuficiente = valor <= Provider.of<Saldo>(context,listen: false).valor;
    return _camposPreenchidos && _saldoSuficiente; 
  }

  _atualizaEstado(context, novaTransferencia, valor) {
    Provider.of<Transferencias>(context, listen: false)
        .adiciona(novaTransferencia);
    Provider.of<Saldo>(context, listen: false).subtrair(valor);
  }
}
