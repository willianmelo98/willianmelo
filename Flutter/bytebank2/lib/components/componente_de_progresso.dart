import 'package:flutter/material.dart';

class Progresso extends StatelessWidget {
  final String mensagem;

  const Progresso({this.mensagem="Carregando"});

  @override
  Widget build(BuildContext context) {
    return  Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Text(mensagem),
                  ],
                ),
              );
  }
}