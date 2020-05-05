class Madre{
  String variabile_madre="";
  int n = 0;


  Madre([this.variabile_madre]) { } //verrà accettata una richiesta con parametri opzionali e quindi costruttore vuoto
  //Madre() {print("costruttore vuoto madre");}
  Madre.c1(this.n);

  String metodo_madre()
  {
    return variabile_madre.toUpperCase();
  }

  String metodo_con_override() => "metodo classe madre";
}

class Figlia extends Madre
{
  String variabile_figlia="";
  int n = 0;
  //richiamiamo costruttore madre con super
  Figlia() : super("inviato dalla figlia") {print("costruttore vuoto figlia");}
  Figlia.c2(int n) : this.n = n, super.c1(450);
 
  int raddoppia() { return 2*n + super.n;}//usare n della madre con quel super n

  @override
  String metodo_con_override() => "metodo classe figlia";
}

main(List<String> args) {
  Figlia f1 = Figlia();
  print(f1.metodo_con_override());

  Madre m1 = Madre();
  print(m1.metodo_con_override());

  //conformità di tipo + late binding
  Madre m2 = Figlia();
  print(m2.metodo_con_override());

  


  // Figlia f2;
  // print(f2);
}