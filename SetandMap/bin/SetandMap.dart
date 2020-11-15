import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  print('Sets Exercise');

  const a = <int>{2, 13, 7, 19, 1, 21};
  const b = <int>{19, 7, 2, 18, 4, 1};
  var exA = (a.difference(b));
  var exB = (b.difference(a));
  var unionAB = exA.union(exB);

  print("Set a: " + a.toString());
  print("Set b: " + b.toString());

  print("Set of elements that belong to either 'a' or 'b', but not both are: "+ unionAB.toString());
  var sum = unionAB.reduce((a, b) => a + b);
  print("The sum of the set is:" + sum.toString());


//----------------

print(' \n \nMaps Exercise');
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  print('Pizza Menu $pizzaPrices');
  const order = ['margherita', 'pepperoni', 'vegetarian'];
  var total = pizzaPrices['margherita'] + pizzaPrices['pepperoni'];
  print('You ordered Margherita Pizza and Pepperoni Pizza.');
  print("Your Total: \$" + total.toString());

  print('Other pizza?');
  var pizza = stdin.readLineSync();
  print(pizza);
  if (pizza.contains('vegetarian') == true) {
    print('Coming!');
  }
  else {
    print(pizza + " pizza is not on the menu");
  }
}

