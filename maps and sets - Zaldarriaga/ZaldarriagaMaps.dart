import 'dart:io';

void main() {
  const pizzaPrices = 
  {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  List order = new List();
  double totalprice =0;
  
  print('Welcome to Jez Pizza');
  print(pizzaPrices);

 /* const ordar={'margherita', 'pineapple'};
  double tots =0;
  ordar.forEach((element) {
    if (pizzaPrices.containsKey(element)){
      tots = tots + pizzaPrices[element];
    }
    else{
      print("pizza Doesn't exist");
    }
   });
*/
  /*print('What is your order?');
  String x = stdin.readLineSync();
  x.toLowerCase();

  order.add(x);
  totalprice = totalprice + pizzaPrices[x];

  print('Do you want to add? Y/N');
  String response = stdin.readLineSync();
  response.toLowerCase();
*/
String response = 'y';
  while (response=='y'){
    print('What is your order?');
    String x = stdin.readLineSync();
    x.toLowerCase();
        if (pizzaPrices.containsKey(x))
        {
          totalprice = totalprice + pizzaPrices[x];
          order.add(x);
        }
        else
        {
          print(x + "pizza is not on the menu");
        }
    print('Do you want to add? Y/N');
    response = stdin.readLineSync();
    response.toLowerCase();
  }
  print("You ordered: $order");
  print("Total: $totalprice");
  
}
