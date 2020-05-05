/*
Primo approccio a dart: Tipi semplici 
*/

main(List<String> args) {
 int n1=67;
 int n2 = 100;
 double d1= 3.14;
 
//i tipi int e double sono figli della classe più generale num

num x =100, y=3.14;
print(x+y);


//classe più generale dei tipi. Quindi dart fà inferenza
var n = 5.78;

print("Somma: ${n1 + n2}");

String s = "Ciao".toUpperCase();
String s1 = s + "mondo";

bool risultato = false;

s = null;

 }