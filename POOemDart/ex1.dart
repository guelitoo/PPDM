// Definição da classe Produto
class Produto {
  // Atributos públicos
  String nome;
  double preco;

  // Construtor padrão
  Produto(this.nome, this.preco);

  // Construtor nomeado
  Produto.nomeado({required this.nome, required this.preco});

  // Método para exibir as informações
  void exibirInfo() {
    print('Produto: $nome | Preço: R\$${preco.toStringAsFixed(2)}');
  }
}

void main() {
  // Usando o construtor padrão
  Produto produto1 = Produto('Notebook', 3500.00);

  // Usando o construtor nomeado
  Produto produto2 = Produto.nomeado(nome: 'Smartphone', preco: 2200.00);

  // Exibindo as informações
  produto1.exibirInfo();
  produto2.exibirInfo();
}
