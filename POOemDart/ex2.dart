// Classe ContaBancaria com encapsulamento
class ContaBancaria {
  // Atributos privados
  String _titular = '';
  double _saldo = 0.0;

  // Getter para titular
  String get titular => _titular;

  // Setter para titular
  set titular(String nome) {
    _titular = nome;
  }

  // Getter para saldo
  double get saldo => _saldo;

  // Setter para saldo com validação
  set saldo(double valor) {
    if (valor >= 0) {
      _saldo = valor;
    } else {
      print('Erro: O saldo não pode ser negativo!');
    }
  }

  // Método para exibir os dados da conta
  void exibirDados() {
    print('Titular: $_titular');
    print('Saldo: R\$${_saldo.toStringAsFixed(2)}');
  }
}

void main() {
  // Criando uma conta bancária
  ContaBancaria conta = ContaBancaria();

  // Definindo titular e saldo
  conta.titular = 'João Silva';
  conta.saldo = 1500.00;

  // Tentando definir um saldo negativo
  conta.saldo = -100.00; // Vai exibir uma mensagem de erro

  // Exibindo os dados
  conta.exibirDados();
}
