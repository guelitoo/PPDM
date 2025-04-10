// Classe Aluno
class Aluno {
  // Atributos públicos
  String nome;
  double nota1;
  double nota2;

  // Construtor
  Aluno(this.nome, this.nota1, this.nota2);

  // Método para calcular a média
  double calcularMedia() {
    return (nota1 + nota2) / 2;
  }
}

void main() {
  // Criando uma lista de alunos
  List<Aluno> alunos = [
    Aluno('Nicolas Oliveira', 8.5, 9.0),
    Aluno('Pedro Francisco', 7.5, 8.5),
    Aluno('Leandro Comedia', 4.0, 3.5),
    Aluno('Bruno Tiago', 7.0, 8.5)
  ];

  // Calculando a média e exibindo alunos aprovados
  for (var aluno in alunos) {
    double media = aluno.calcularMedia();
    if (media >= 6.0) {
      print('${aluno.nome} - Aprovado! Média: ${media.toStringAsFixed(2)}');
    } else {
      print('${aluno.nome} - Reprovado. Média: ${media.toStringAsFixed(2)}');
    }
  }
}
