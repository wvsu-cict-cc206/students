import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  print('Maps Exercise');

  var pizzaPrices = <String, double>{
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  var total = pizzaPrices['margherita'] + pizzaPrices['pepperoni'];
  print('\nYou ordered Margherita Pizza and Pepperoni Pizza.');
  print("Your Total: \$" + total.toString());

  print('\nAny other pizza?');
  var name = stdin.readLineSync();
  if (name.contains('vegetarian') == true){
    print('Coming right up!');
  }
  else{
    print(name + " pizza is not on the menu");
  }


  //-------------------------------------------------------


  print('\nSets Exercise\n');

  const a = <int>{4, 5, 9, 12, 18, 21};
  const b = <int>{4, 8, 9, 18, 20, 21};
  var exA = (a.difference(b));
  var exB = (b.difference(a));
  var unionAB = exA.union(exB);

  print("Set a: " + a.toString());
  print("Set b: " + b.toString());

  print("Set of elemnts that belong to either 'a' or 'b', but not both are: \n"+ unionAB.toString());
  var sum = unionAB.reduce((a, b) => a + b);
  print("The sum of this set is : " + sum.toString());
}


