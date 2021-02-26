import 'package:flutter/material.dart';

class MensagemCentralizada extends StatelessWidget {
  final String mensagem;
  final IconData icon;
  final double tamanho_Icone;
  final double fontSize;

  MensagemCentralizada(
    this.mensagem, {
    this.icon,
    this.tamanho_Icone = 64,
    this.fontSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Visibility(
            child: Icon(
              icon,
              size: tamanho_Icone,
            ),
            visible: icon != null,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              mensagem,
              style: TextStyle(fontSize: fontSize),
            ),
          ),
        ],
      ),
    );
  }
}
