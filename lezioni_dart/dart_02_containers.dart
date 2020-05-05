/*Dart - Collezioni (List,Set,Map) */
import 'dart:io';
//********************************************* */
//A-LIST
main(List<String> args) {

  List<int> list_int_fissa= new List<int> (3);
  list_int_fissa[1] = 200; // assegno al secondo elemento della lista il valore 200
  print(list_int_fissa);//stampando i valor della lista, se non si scrive niente, quindi qua in [0] e [2] i valori sono NULL

  var lista2 = new List<String> (20);
  lista2[0] ="Saluto";
  print(lista2);

  //Liste con numero variabile di elementi
  var lista3= [1,2,3];
  lista3.add(4);//aggiungo alla fine della lista il valore 4 grazie al metodo add
  lista3.removeAt(0);//rimuovo il primo elemento della lista in posizione 0 con il metodo removeAt
  print(lista3);


var lista4 = new List<num> (); //lista vuota
//Se non scrivessi lista4.add(18) verrebe fuori che non posso assegmare -91 alla posizione 0 perchè non ho delineato quanti elementi ha la lista che è indefinita
lista4.add(18);
lista4[0] = -91;

print(lista4);

//1-Ciclo for classico
for ( int i=0 ; i <list_int_fissa.length; i++) 
  stdout.write("${list_int_fissa[i]}");
print("");

 //2-con iteratore
 var it = list_int_fissa.iterator;
 while (it.moveNext())
  stdout.write("${it.current}");
print("");

/*con iterator possiamo solo leggere i valori con il for possiamo invece anche modificarli
compromettendo la sicurezza */

//3-ciclo for-in implicito

for (var ele in list_int_fissa)
  stdout.write("$ele");
print("");

void elabora(var ele){
  stdout.write("$ele");
}

//4- Foreach 
list_int_fissa.forEach(elabora);
//*************************************************** */
//B-Set
//è un insieme quindi non c'e un primo un secondo e cosi via.
Set<String> colori ={"giallo","rosso"};
colori.add("arancio");
print(colori);

print(colori.runtimeType);
// il risultato è _CompactLinkedHashSet<String>. Significa che l'ordinamento è basato sull'inserimento e non su un valore prefissato come era nelle liste
print(colori.elementAt(0));
print(colori.last);
//Ci sono vari metodi che lavorano con gli insiemi

/********************************** */
//C-MAP

Map m = {"codice": "a","descrizione":"b"};
print(m["codice"]);
print(m["descrizione"]);
m["terza_chiave"]=1237;

print(m);
}