// Classe; Atributo; Construtor; Método
//Funcao principal para iniciar o programa
void main() {
  exemplo_nicole();
  exemplo_pessoa();
}

//Método void
void exemplo_nicole() {
  print("Classe Nicole");
  // Instanciar a classe
  var nome_parametro = "Marcela";
  var idade_parametro = 103;
  var pessoa = Nicole.nome_vindo_de_fora(nome_parametro, idade_parametro);
  print(pessoa.ddd_telefone("9452"));
  print(pessoa.idade);
  pessoa.idade = 18;
  print(pessoa.idade);
  print(pessoa.nome);
  //pessoa.nome = "Felipe";
  print("Nome: " + pessoa.nome);
}

void exemplo_pessoa() {
  print("\nClasse Pessoa");
  var transformando_classe_em_objeto3 = Pessoa();
  print(transformando_classe_em_objeto3.telefone);
  print(transformando_classe_em_objeto3.nome);
  print(transformando_classe_em_objeto3.idade);
  /////////////////////////////////////////////////////////////////////////////////////////////
  var nome_parametro = "João";
  var telefone_parametro = "19996875144";
  var idade_parametro = 6;
  var transformando_classe_em_objeto = Pessoa.Parametros_vindos_de_fora(
      nome_parametro, telefone_parametro, idade_parametro);
  print(transformando_classe_em_objeto.telefone);
  print(transformando_classe_em_objeto.nome);
  print(transformando_classe_em_objeto.idade);

  var telefone_retornado = transformando_classe_em_objeto
      .ddd_telefone(transformando_classe_em_objeto.telefone);
  print(telefone_retornado);
  /////////////////////////////////////////////////////////////////////////////////////////////
  var tranformando_classe_em_objeto2 =
      Pessoa.Parametros_vindos_de_fora("Valéria", "123", 65);
  print(tranformando_classe_em_objeto2.telefone);
  print(tranformando_classe_em_objeto2.nome);
  print(tranformando_classe_em_objeto2.idade);
  /////////////////////////////////////////////////////////////////////////////////////////////
  var tranformando_classe_em_objeto4 = Pessoa.genero_masculino();
  print(tranformando_classe_em_objeto4.nome);
  print(tranformando_classe_em_objeto4.telefone);
  print(tranformando_classe_em_objeto4.idade);
}

class Pessoa {
  late String telefone;
  late String nome;
  late int idade;
  Pessoa() {
    telefone = "19997463045";
    nome = "Maria";
    idade = 12;
  }
  Pessoa.Parametros_vindos_de_fora(
      String nome_parametro, String telefone_parametro, int idade_parametro) {
    nome = nome_parametro;
    telefone = telefone_parametro;
    idade = idade_parametro;
  }
  Pessoa.genero_masculino() {
    nome = "Márcio";
    telefone = "19007";
    idade = 8;
  }
  // Método - comportamente
  // Acrescendar DDD
  String ddd_telefone(String telefone_parametro) {
    return "55" + telefone_parametro;
  }
}

// Herança -- Extends
class Nicole extends Pessoa {
  // Variável - característica
  // late int idade;
  // late String nome;
  // Construtor -- constroi a classe
  Nicole() {
    nome = "Nicole";
    idade = 19;
  }
  Nicole.nome_vindo_de_fora(String nome_parametro, int idade_parametro) {
    nome = nome_parametro;
    idade = idade_parametro;
  }
}
// late - colocar o valor mais tarde
// final - precisa definir um valor e não pode alterar posteriormente
// Sem nenhuma palavra reservada - Precisa colocar um valor inicial e posso alterá-lo depois