// Classe; Atributo; Construtor; Método
//Funcao principal para iniciar o programa
void main() {
  exemplo_nicole();
  exemplo_pessoa();
}

//Método void
void exemplo_nicole() {
  // Instanciar a classe
  var pessoa = Nicole();
  print(pessoa.idade);
  pessoa.idade = 18;
  print(pessoa.idade);
  print(pessoa.nome);
  //pessoa.nome = "Felipe";
  print("Nome: " + pessoa.nome);
}

void exemplo_pessoa() {
  var pessoa2 = Pessoa();
  print(pessoa2.telefone);

  var telefone_retornado = pessoa2.ddd_telefone(pessoa2.telefone);
  print(telefone_retornado);
}

class Pessoa {
  late String telefone;
  Pessoa() {
    telefone = "19997463045";
  }
  // Método - comportamente
  // Acrescendar DDD
  String ddd_telefone(String telefone_parametro) {
    return "55" + telefone_parametro;
  }
}

class Nicole {
  // Variável - característica
  late int idade;
  late String nome;
  // Construtor
  Nicole() {
    idade = 19;
    nome = "Nicole";
  }
}
// late - colocar o valor mais tarde
// final - precisa definir um valor e não pode alterar posteriormente
// Sem nenhuma palavra reservada - Precisa colocar um valor inicial e posso alterá-lo depois