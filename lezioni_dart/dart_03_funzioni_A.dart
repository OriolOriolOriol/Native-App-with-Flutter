f() // è considerata in automatico come: void f()
{
//qua dentro è come se ci fosse return null;
}

class Numero 
{
   double x=9.9;
}

main(List<String> args) {
  int n = 100;

  var x =f();
  print(x ==null);
  print(x.runtimeType);




  finto_raddoppio(n); //tipi primitivi passati by value
  print(n);

  String s="ciao";
  finto_raddoppio_stringa(s); //idem
  print(s);

  // I TIPI PRIMITIVI (int double ecc) sono passati by value, mentre i tipi non primitivi by reference!!!

  Numero c_obj = new Numero();
  print(c_obj.x); //9.9

  modifica_stato_interno(c_obj);// cambia x in 7.7
  print(c_obj.x); //7.7

  finta_modifica_obj(c_obj); //viene passato by value L`INDIRIZZO dell`oggetto
  print(c_obj.x); //ancora 7.7!

}
int raddoppia(int n)
{
  return 2*n;
}

void finto_raddoppio(int n)
{
  n*=2;
}

void finto_raddoppio_stringa(String s)
{
  s*=2;
}

void modifica_stato_interno(Numero obj )
{
  obj.x = 7.7; //accediamo all'oggetto creato nel main!!!
}

void finta_modifica_obj(Numero obj)
{
  obj = Numero(); //in obj abbiamo messo l`indirizzo di un nuovo oggetto ma quello del main non viene modificato
  obj.x=888.888;
}



