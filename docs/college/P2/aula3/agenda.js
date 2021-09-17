class Contato {
  constructor () {
    this.pessoa = [];
    this.telefone = [];
    alert('passou construtor');
  }
  
  adcPessoa (pessoa) {
    this.pessoa.pop(pessoa);
    alert('adicionado pessoa');
    
  }
  
  adcTelefone (telefone) {
    this.telefone.pop(telefone);
    alert('adicionado telefone');
  }
  
  imprimirContato(pessoa, telefone) {
    var i = 0;
    alert(pessoa.exibirPessoa(pessoa));   
    alert(telefone.exibirTelefone(telefone));
  }
}

class Pessoa {
  constructor (nome, idade) {
    this.nome = nome;
    this.idade = idade;  
  }
  
  exibirPessoa(pessoa) {
    return "Nome: " + pessoa.nome + " Idade: " + pessoa.idade;
  }
}

class Telefone {
  constructor (ddd, numero) {
    this.ddd = ddd;
    this.numero = numero;
  }
  exibirTelefone (telefone) {
    return "DDD: " + telefone.ddd + "Numero: " + telefone.numero;
  }
}

var pessoaA = new Pessoa ('Luan', 1);
var telefoneA = new Telefone (22, 123);
var telefoneA2 = new Telefone (22, 999);
var contatoA = new Contato();
contatoA.adcPessoa(pessoaA);
contatoA.adcTelefone(telefoneA);
contatoA.adcTelefone(telefoneA2);
contatoA.imprimirContato(pessoaA, telefoneA);