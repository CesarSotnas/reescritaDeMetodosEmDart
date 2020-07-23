// Herança

class Animal {
  String nome;
  double peso;

  Animal(this.nome, this.peso);

  void comer(){
    print("$nome comeu");
  }
  
  void fazerSom() {
    print("$nome fez algum som!");
  }
}

class Cachorro extends Animal {
  int fofura;

  Cachorro(String nome, double peso, this.fofura) : super(nome, peso);

  void brincar() {
    fofura += 10;
    print("Fofura do $nome aumentou para $fofura");
  }

  @override
  void comer(){
    print("$nome não comeu");
  }

  @override
  void fazerSom() {
    print("$nome não fez som!");
  }

}

class Gato extends Animal {

  Gato(String nome, double peso) : super(nome, peso);
  
  @override
  void comer(){
   print("$nome comeu pra caramba!");
  }
  
  @override
  void fazerSom() {
   print("$nome miou a noite toda no telhado!");
  }
  bool estaAmigavel() {
    return true;
  }
}

void main(){

Cachorro cachorro = Cachorro("Dog", 10.0, 100);

cachorro.fazerSom();
print(cachorro.nome);
cachorro.comer();
cachorro.brincar();

Gato gato = Gato("Cat", 26);

gato.fazerSom();
print(gato.nome);
gato.comer();
print(gato.estaAmigavel());

}