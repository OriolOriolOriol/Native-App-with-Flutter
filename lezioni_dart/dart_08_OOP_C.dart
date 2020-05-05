class disegnabile //ogni classe può essere implicitamente usata come interfaccia
{
  void draw() {}
}

//utili servizi tipo rimozione linee nascoste
//pretende che gli oggetti da disegnare
//abbiano il metodo draw
class disegnatore
{

}

abstract class Figure {
  int id;
  double area();
}
//con abstract praticamerte non dobbiamo istanziare ninete per il meotodo area :D
class Cerchio extends Figure implements disegnabile {
  double raggio;
  Cerchio(this.raggio);
  
  @override
  double area() => raggio*raggio*3.14;

  void draw() {} //per rispettare interfaccia `disegnabile`
}

class Rettangolo extends Figure implements disegnabile {//implementa l'interfaccia disegnabile
  double base, altezza;
  Rettangolo(this.base, this.altezza);
  
  @override
  double area() => base*altezza;

  void draw() {} //per rispettare interfaccia `disegnabile`
}

/*@override: A cosa serve? Puttanata Se per caso in futuro dovessi cambiare nome ad un metodo presente anche
in altre classi quel override mi sottolinerà che anche gli altri metodi che riportavano lo stesso nome
devono in qualche modo essere cambiati. Una specie di assicurazione sulla vita :D
*/

main(List<String> args) {
  //Figure f = Figure(); //no: Figure è una classe astratta
  
  Figure f1 = Cerchio(5); //conformità di tipo //classi derivate da Figure --> Cerchio e Rettangolo
  Figure f2 = Rettangolo(4, 5);

  print("${f1.area()} - ${f2.area()}"); //polimofrmismo il metodo area assume diverse forme (Cerchio Rettangoloe ecc)

  List<Figure> disegno = [Cerchio(6), Cerchio(3), Rettangolo(2,6), Cerchio(1)];

  double somma_aree = 0;
  disegno.forEach( (ele) {somma_aree += ele.area();} );
  print(somma_aree);

}