import 'contato.dart';

class Transacao {
  final double valor;
  final Contato contato;

  Transacao(
    this.valor,
    this.contato,
  );

  Transacao.fromJson(Map<String, dynamic> json)
      : valor = json['value'],
        contato = Contato.fromJson(json['contact']);

        Map<String, dynamic> toJson() =>
    {
      'value': valor,
      'contact': contato.toJson(),
    };

  @override
  String toString() {
    return 'Transacao{value: $valor, contato: $contato}';
  }
}
