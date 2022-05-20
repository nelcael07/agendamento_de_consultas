class Pacients {
  late String id;
  String nome;
  String cpf;
  String endereco;
  String idade;
  String problema_saude;
  String telefone;
  Pacients(this.nome, this.cpf, this.endereco, this.idade, this.problema_saude,
      this.telefone);

  //formato json em objeto
  Pacients.fromMap(Map<String, dynamic> map) : nome = map['nome'],
    cpf = map['cpf'],
    endereco = map['endereco'],
    idade = map['idade'],
    problema_saude = map['problema_saude'],
    telefone = map['telefone']
  ;

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'cpf': cpf,
      'endereco': endereco,
      'idade': idade,
      'problema_saude': problema_saude,
      'telefone': telefone
    };
  }
}
