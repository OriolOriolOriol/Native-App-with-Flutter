import 'dart:math';

class Cliente
{
  String ragione_sociale="";
  double fatturato=0;
  int ordini_settimanali=0;

  Cliente(String ragione_sociale, double fatturato, int ordini_settimanali)
  {
    this.ragione_sociale = ragione_sociale; // crea un collegamento intrinseco tra il parametro della funzione e la variabile della classe!!!
    this.fatturato = fatturato;
    this.ordini_settimanali = ordini_settimanali;

  }
}

String genera_bottone({String id, int codice_colore, int larghezza})
{
  String html ="<button id='";

  //il resto in base ai parametri

  return html;
}


void ordina(Function minore_di, List<Cliente> clienti )//tra i parametri passo una funzione!!!!
{
  Cliente temp;
  for (int i=0; i<clienti.length - 1; i++)
    for (int j=i+1; j<clienti.length; j++)
    {
      if (minore_di(clienti[j], clienti[i]))
      {
        temp = clienti[i];
        clienti[i]=clienti[j];
        clienti[j] = temp;
      }
    }
}

class Function_repository {

  static var funzioni = {"fatturato": (Cliente a, Cliente b) => a.fatturato < b.fatturato, 
                  "ordini": (Cliente a, Cliente b) => a.ordini_settimanali < b.ordini_settimanali};

  static Function estrai(String criterio)
  {
    
    return funzioni[criterio];
  }
}

main(List<String> args) {
  genera_bottone(codice_colore: 65);

  var codici = ["ABC123", "XVW667", "GTU200", "MWQ003"];
  String prefissi=""; //vogliamo ABCXVWGTUMWQ
  
  /*Forech prenderà i 4 valori dell array codici e ognuno lo 
  inserira' di volta in volta dentro la stringa ele a cui viene applicata la funzione scritta tra {}. Concatena
  le stringhe con le prime tre lettere di ciascuna stringa */

  codici.forEach((String ele) {prefissi += ele.substring(0,3);});
  print(prefissi);  
///////////////////////////////////////////////////////////////////////////////////////////////

//la freccia => rappresenta lambda
  var funzioni = [(n) => n*n, (n) => n*n*n, (b,e) => pow(b,e)];

  print( funzioni[0](6) );
  print( funzioni[1](6) );
  print( funzioni[2](2,5));

 //////////////////////////////////////////////////////////////////////////////////////////////
 

  var clienti = [Cliente("Pellini", 12340, 23), Cliente("Rossi", 600, 100)];
  
  var criterio_fatturato = (Cliente a, Cliente b) => a.fatturato < b.fatturato;
  var criterio_ordini = (Cliente a, Cliente b) => a.ordini_settimanali < b.ordini_settimanali;

  ordina(criterio_fatturato, clienti);//ordina i clienti
  clienti.forEach((ele) {print(ele.ragione_sociale);});//qui li stampo!!!

  ordina( Function_repository.estrai("fatturato"), clienti);
  clienti.forEach((ele) {print(ele.ragione_sociale);});




  

}