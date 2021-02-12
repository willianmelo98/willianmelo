
class Transferencia {
  final double valor;
  final int numeroConta;
  Transferencia(this.numeroConta, this.valor);

  @override
  String toStringValor() {
    return 'R\$: $valor';
  }

    @override
   String toStringConta() {
    return 'Conta: $numeroConta';
  }
}