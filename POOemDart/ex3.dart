// Classe Funcionario com encapsulamento e validação
class Funcionario {
  // Atributos privados
  String _nome = '';
  double _salario = 0.0;

  // Getter para o nome
  String get nome => _nome;

  // Setter para o nome
  set nome(String nome) {
    _nome = nome;
  }

  // Getter para o salário
  double get salario => _salario;

  // Setter para o salário com validação
  set salario(double salario) {
    if (salario >= 0) {
      _salario = salario;
    } else {
      print('Erro: O salário não pode ser negativo!');
    }
  }

  // Método para exibir os dados do funcionário
  void exibirDados() {
    print('Nome: $_nome');
    print('Salário: R\$${_salario.toStringAsFixed(2)}');
  }
}

void main() {
  // Criando um funcionário
  Funcionario funcionario = Funcionario();

  // Definindo o nome e o salário
  funcionario.nome = 'Maria Oliveira';
  funcionario.salario = 2500.00;

  // Tentando definir um salário negativo
  funcionario.salario = -500.00; // Vai exibir uma mensagem de erro

  // Exibindo os dados
  funcionario.exibirDados();
}
