import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart';

import 'package:bytebank2/models/transacao.dart';
import 'package:bytebank2/service/web_cliente.dart';

class TransacaoWebClient {
  Future<List<Transacao>> findAll() async {
    final Response response =
        await client.get(urlApi).timeout(Duration(seconds: 5));
         
        final List<dynamic> decodedJson = jsonDecode(response.body); 
    
        return decodedJson.map((dynamic json) => Transacao.fromJson(json)).toList();
  }

  Future<Transacao> salvar(Transacao transacao) async {
    final String transacaoJson = jsonEncode(transacao.toJson());
    final Response response = await client.post(urlApi,
        headers: {'Content-type': 'application/json', 'password': '1000'},
        body: transacaoJson);

    return Transacao.fromJson(jsonDecode(response.body));
  }

  
}
