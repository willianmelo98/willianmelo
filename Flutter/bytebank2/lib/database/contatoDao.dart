import 'package:bytebank2/database/app_database.dart';
import 'package:bytebank2/models/contato.dart';
import 'package:sqflite/sqflite.dart';


class ContatoDao{

  static const String tabelaSql = 'CREATE TABLE $_nomeTabela('
          '$_id INTEGER PRIMARY KEY, '
          '$_nome TEXT, '
          '$_numeroConta INTEGER)';

  static const String _nomeTabela = 'contatos';
  static const String _id = 'id';
  static const String _nome = 'nome';
  static const String _numeroConta = 'numeroConta';

Future<int> save(Contato contato) async {
  final Database db = await createDatabase();
  Map<String, dynamic> contatoMap = _toMap(contato);
  return db.insert(_nomeTabela, contatoMap);
}

Map<String, dynamic> _toMap(Contato contato) {
   final Map<String, dynamic> contatoMap = Map();
  
  contatoMap[_nome] = contato.nome;
  contatoMap[_numeroConta] = contato.numeroConta;
  return contatoMap;
}


Future<List<Contato>> findAll() async{

  final Database db = await createDatabase();
  final List<Contato> contatos = List();

  final List<Map<String, dynamic>> resultados = await db.query('contatos');



 
      for (Map<String, dynamic> resultado in resultados) {
        final Contato contato = Contato(
          resultado[_id],
          resultado[_nome],
          resultado[_numeroConta],
        );
        contatos.add(contato);
      }
      return contatos;

}

}