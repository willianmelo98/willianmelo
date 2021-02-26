import 'package:bytebank2/components/componente_de_progresso.dart';
import 'package:bytebank2/components/mensagem_Centralizada.dart';
import 'package:bytebank2/models/transacao.dart';
import 'package:bytebank2/service/webclients/transacao_webClient.dart';
import 'package:flutter/material.dart';

class ListaTransacoes extends StatelessWidget {
   final TransacaoWebClient _webClient = TransacaoWebClient();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transacoes'),
      ),
      body: FutureBuilder<List<Transacao>>(
        future: _webClient.findAll(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:

              break;
            case ConnectionState.waiting:
              return Progresso();
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:

            if(snapshot.hasData){
                          final List<Transacao> transacoes = snapshot.data;
              if(transacoes.isNotEmpty){
                 return ListView.builder(
                itemBuilder: (context, index) {
                  final Transacao transacao = transacoes[index];
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text(
                        transacao.valor.toString(),
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        transacao.contato.numeroConta.toString(),
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: transacoes.length,
              );
                
              }

            }
               
           

              break;
          }
          return MensagemCentralizada('Nenhum dado encontrado',icon: Icons.warning,);
        },
      ),
    );
  }
}
