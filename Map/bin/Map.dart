import 'dart:io';

void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  print('Pizza Menu $pizzaPrices');
  const orders = ['margherita', 'pepperoni', 'vegetarian'];
  print('What do you want to order? ');
  var ord = stdin.readLineSync();
  print(pizzaPrices['$ord']);
  print('What do you want to add? ');
  var add = stdin.readLineSync();
  print(pizzaPrices['$add']);
  var total = pizzaPrices['$ord'] + pizzaPrices['$add'];
  print('You ordered $ord Pizza and $add Pizza.');
  print("Your Total: \$" + total.toString());
{
  print('What do you want to add?');
  var other = stdin.readLineSync();
  var veg= total + 6.5;
  var pep= total + 7.5;
  var marg= total + 5.5;

    if (other.contains('vegetarian') == true) {
      print('Coming! Total: $veg' );
    }
    else if (other.contains('pepperoni') == true) {
      print('Coming! Total: $pep');
    }
    else if (other.contains('margherita') == true) {
      print('Coming! Total: $marg');
    }
    else {
      print(other + " pizza is not on the menu");
    }
  }
}