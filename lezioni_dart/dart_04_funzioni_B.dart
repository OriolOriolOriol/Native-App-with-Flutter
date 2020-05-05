/*Parametri Posizionali e Parametri Nominali */


String genera_bottone({String id, int codice_colore, int larghezza=100})//mettendolo tra [] il parametro diventa opzionale
{

  String html ="<button";

  //il resto in base ai parametri
  return html;
}

main(List<String> args){

  //PARAMETRI POSIZIONALI
  //i parametri che inserisco nella funzione sono inoltre posizionali, perchè non posso mettere 45 che è codice colore al posto dell altro parametro che è string!!
  
  //genera_bottone("bottone_conferma", 45,100);
  
  //NOn puoi specificare il colore senza specificare anche l'ID
  //genera_bottone(65); <-- da errore


  //PARAMETRI NOMINALI (devo cambiare anche nella funzione mettendo le graffe)

  genera_bottone(codice_colore:65); //<-- inserisco il nome del parametro con il suo valore


}