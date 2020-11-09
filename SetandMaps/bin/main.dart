import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {

//Dart Set Exercise
  const a = <int>{1,2,5,7,8};
  const b = <int>{1,3,5,7,9};

  var belongA = (a.difference(b));
  var belongB = (b.difference(a));
  var aB = belongA.union(belongB);

  print("Dart Set Exercise");
  print(aB);
  var sum = aB.reduce((a, b) => a + b);
  print("The sum of the set of the elements that belong to either `a` or `b`, but not both is " + sum.toString());

//Dart Maps Exercise
  print("Dart Map Exercise");

  var pizzaPrices = <String, double>{
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  var orderTotal = pizzaPrices['margherita'] + pizzaPrices['pepperoni'];
  print('\nYour order is Margherita Pizza and Pepperoni Pizza.');
  print("Total: \$" + orderTotal.toString());

  print('\nDo you guys have pineapple pizza?');
  if (pizzaPrices.containsKey('pineapple') == false){
    print('Pineapple Pizza is not on the menu');
  };

}