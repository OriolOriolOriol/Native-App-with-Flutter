class Cliente {

  String nome_cognome;
  double _fatturato; // _ sta ad indicare che ho reso privata la variabile. Improtando tale classe da un altra parte il richiamo di set darebbe errore
  int anni;

//COSTRUTTORE DI OGGETTI DI QUESTA CLASSE 
  Cliente (String nome_cognome,double fatturato,int anni){

    this.nome_cognome=nome_cognome;
    this._fatturato=fatturato;
    this.anni=anni;
  }

  //Costruttore short hand

  //Cliente(String this.nome_cognome,double this._fatturato, int this.anni);

/////////////////////////////
//Altri metodi

  bool autenticazione(){

    return true;
  }

//Metodi GETTER e SETTER
/*
Generalmente gli attributi di una classe sono privati, per evitare
che un utilizzatore esterno modifichi lo stato interno di un
oggetto in maniera inconsistente.
• Tuttavia, in certi casi è necessario poter accedere al valore di
questi attributi. Questo può essere realizzato tramite dei metodi
che prendono il nome di getter (permettono di leggere un
attributo) o setter (permettono di modificare un attributo).
 */

double get fatturato1
{
  return autenticazione()  ? _fatturato : null;
}


void set fatturato1(double nuovo_valore){
  _fatturato=nuovo_valore;
}

//COSTRUTTORE IN JSON!!!!
 Cliente.from_json(var json_obj)
  {
     nome_cognome = json_obj["nome_cognome"];
     fatturato1 = json_obj["fatturato"];//utilizzo un setter (fatturato1)
     anni = json_obj["anni"];
  }


}//chiusura classe Cliente!!!

main(List<String> args) {
  
  Cliente c1 = new Cliente("Claudio Rimensi", 200, 24);
  print(c1.fatturato1);

  Cliente c2 = new Cliente("Eleonora Piana",1000,23);
  print(c2.fatturato1);

  //Accesso tramite JSON
  Cliente c3= Cliente.from_json({"nome_cognome":"Pippo","fatturato": 2345.78, "anni": 98});
  print(c3.fatturato1);


}