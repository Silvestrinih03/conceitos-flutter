void main() {
  print("Classe Cadastro");
  var email_parametro = "nicole@teste.com";
  var senha_parametro = "senha123";
  var cadastro = Cadastro(email_parametro, senha_parametro);
  print("Nome: " + cadastro.nome);
  print("Email: " + cadastro.email);
  print("Senha: " + cadastro.senha);
  var senha_alterada = "senha_alterada";
  var alteracao = cadastro.alterar_senha(senha_alterada);
  print("Nova senha: " + alteracao);
  print(cadastro.senha);
  print("\nClasse Continuar_assistindo");
  var filme_parametro = "The Flash";
  var continuar_assistindo =
      Continuar_assistindo(email_parametro, senha_parametro, filme_parametro);
  print("Email: " + continuar_assistindo.email);
  print("Filme: " + continuar_assistindo.filme);
}

class Cadastro {
  //Atributo
  final String nome = "Nicole";
  late String email;
  late String senha;
  Cadastro(String email_parametro, String senha_parametro) {
    email = email_parametro;
    senha = senha_parametro;
  }
  String alterar_senha(String senha_alterada) {
    senha = senha_alterada;
    return senha_alterada;
  }
}

class Continuar_assistindo extends Cadastro {
  late String filme;
  Continuar_assistindo(
      String email_parametro, String senha_parametro, String filme_parametro)
      : super(email_parametro, senha_parametro) {
    filme = filme_parametro;
  }
}
