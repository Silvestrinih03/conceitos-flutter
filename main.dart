// Classe; Atributo; Construtor; Método
//Funcao principal para iniciar o programa
void main() {
  //exemplo_nicole();
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
  var transformando_classe_em_objeto3 = Pessoa();
  print(transformando_classe_em_objeto3.telefone);
  print(transformando_classe_em_objeto3.nome);
  /////////////////////////////////////////////////////////////////////////////////////////////
  var nome_parametro = "João";
  var telefone_parametro = "19996875144";
  var transformando_classe_em_objeto =
      Pessoa.Parametros_vindos_de_fora(nome_parametro, telefone_parametro);
  print(transformando_classe_em_objeto.telefone);
  print(transformando_classe_em_objeto.nome);

  var telefone_retornado = transformando_classe_em_objeto
      .ddd_telefone(transformando_classe_em_objeto.telefone);
  print(telefone_retornado);
  /////////////////////////////////////////////////////////////////////////////////////////////
  var tranformando_classe_em_objeto2 =
      Pessoa.Parametros_vindos_de_fora("Valéria", "123");
  print(tranformando_classe_em_objeto2.telefone);
  print(tranformando_classe_em_objeto2.nome);
  /////////////////////////////////////////////////////////////////////////////////////////////
  var tranformando_classe_em_objeto4 = Pessoa.genero_masculino();
  print(tranformando_classe_em_objeto4.nome);
  print(tranformando_classe_em_objeto4.telefone);
}

class Pessoa {
  late String telefone;
  late String nome;
  Pessoa() {
    telefone = "19997463045";
    nome = "Maria";
  }
  Pessoa.Parametros_vindos_de_fora(
      String nome_parametro, String telefone_parametro) {
    nome = nome_parametro;
    telefone = telefone_parametro;
  }
  Pessoa.genero_masculino() {
    nome = "Márcio";
    telefone = "19007";
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
  // Construtor -- constroi a classe
  Nicole() {
    idade = 19;
    nome = "Nicole";
  }
}
// late - colocar o valor mais tarde
// final - precisa definir um valor e não pode alterar posteriormente
// Sem nenhuma palavra reservada - Precisa colocar um valor inicial e posso alterá-lo depois