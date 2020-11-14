import 'dart:io';
import 'dart:math';

void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  print('Pizza Menu $pizzaPrices');
  const orders = ['margherita', 'pepperoni', 'vegetarian'];
  print('What you want to order? ');
  var ord = stdin.readLineSync();
  print(pizzaPrices['$ord']);
  print('What you want to add? ');
  var add = stdin.readLineSync();
  print(pizzaPrices['$add']);
  var total = pizzaPrices['$ord'] + pizzaPrices['$add'];
  print('You ordered Margherita Pizza and Pepperoni Pizza.');
  print("Your Total: \$" + total.toString());

  print('Any other pizza?');
  var name = stdin.readLineSync();
  print(name);
  if (name.contains('vegetarian') == true) {
    print('Coming right up!');
  }
  if (name.contains('pepperoni') == true) {
    print('Coming right up!');
  }
  if (name.contains('margherita') == true) {
    print('Coming right up!');
  }
  else {
    print(name + " pizza is not on the menu");
  }
}