import 'dart:io';
import 'dart:math';

class JogoTiro {
  // Configuração do campo de jogo
  final int largura = 20;  // Tamanho fixo do campo
  late int alvo;           // Posição atual do alvo
  int jogador1 = 5;        // Posição inicial do jogador 1
  int jogador2 = 15;       // Posição inicial do jogador 2
  bool jogoAtivo = true;   // Estado do jogo
  String? vencedor;        // Armazena o vencedor

  JogoTiro() {
    reposicionarAlvo();    // Inicializa o alvo em posição válida
  }

  // Reposiciona o alvo garantindo que não fique sobre os jogadores
  void reposicionarAlvo() {
    do {
      alvo = Random().nextInt(largura);
    } while (alvo == jogador1 || alvo == jogador2);
  }

  // Exibe o estado atual do jogo com emojis
  void exibirJogo() {
    for (int i = 0; i < largura; i++) {
      if (i == jogador1) {
        stdout.write('🔫1');  // Representação do jogador 1
      } else if (i == jogador2) {
        stdout.write('🔫2');  // Representação do jogador 2
      } else if (i == alvo) {
        stdout.write('🎯');   // Representação do alvo
      } else {
        stdout.write('-');    // Espaço vazio
      }
    }
    print('');  // Nova linha após exibir o campo
  }

  // Move um jogador na direção especificada
  void moverJogador(int jogador, String direcao) {
    if (jogador == 1) {
      if (direcao == 'a' && jogador1 > 0) {
        jogador1--;  // Move Jogador 1 para esquerda
      } else if (direcao == 'd' && jogador1 < largura - 1) {
        jogador1++;  // Move Jogador 1 para direita
      }
    } else if (jogador == 2) {
      if (direcao == 'j' && jogador2 > 0) {
        jogador2--;  // Move Jogador 2 para esquerda
      } else if (direcao == 'l' && jogador2 < largura - 1) {
        jogador2++;  // Move Jogador 2 para direita
      }
    }
  }

  // Verifica se um jogador acertou o alvo
  bool atirar(int jogador) {
    if ((jogador == 1 && jogador1 == alvo) ||
        (jogador == 2 && jogador2 == alvo)) {
      jogoAtivo = false;            // Encerra o jogo
      vencedor = 'Jogador $jogador'; // Define o vencedor
      return true;                  // Retorna acerto
    }
    return false;                   // Retorna erro
  }
}

void main() {
  JogoTiro jogo = JogoTiro();  // Inicializa o jogo
  String? comando;             // Armazena entrada do usuário

  // Exibe instruções iniciais
  print("\n=== JOGO DE TIRO PARA DOIS JOGADORES ===");
  print("Jogador 1: use 'a' (esquerda), 'd' (direita) e 'f' para atirar!");
  print("Jogador 2: use 'j' (esquerda), 'l' (direita) e 'h' para atirar!\n");

  // Loop principal do jogo
  while (jogo.jogoAtivo) {
    jogo.exibirJogo();          // Mostra o estado atual
    stdout.write("Comando: ");  // Prompt para entrada
    comando = stdin.readLineSync();  // Lê entrada do usuário

    // Processa comandos do Jogador 1
    if (comando == 'a' || comando == 'd') {
      jogo.moverJogador(1, comando!);
    } else if (comando == 'f') {
      if (jogo.atirar(1)) {
        print("\n🎯 Jogador 1 acertou o alvo! Parabéns! 🎯\n");
      } else {
        print("\n💥 Jogador 1 errou! Continue tentando.\n");
      }
    }
    // Processa comandos do Jogador 2
    else if (comando == 'j' || comando == 'l') {
      jogo.moverJogador(2, comando!);
    } else if (comando == 'h') {
      if (jogo.atirar(2)) {
        print("\n🎯 Jogador 2 acertou o alvo! Parabéns! 🎯\n");
      } else {
        print("\n💥 Jogador 2 errou! Continue tentando.\n");
      }
    } else {
      // Mensagem para comandos inválidos
      print("\nComando inválido! Use:\n"
          "Jogador 1: a/d/f\n"
          "Jogador 2: j/l/h\n");
    }
  }

  // Exibe mensagem final quando houver vencedor
  if (jogo.vencedor != null) {
    print("=== FIM DE JOGO ===");
    print("🏆 ${jogo.vencedor} venceu! 🏆");
  }
}
