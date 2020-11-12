void main() {
  print('      MAP EXERCISE\r\n -----Pizza Ordering-----\r\n');

  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  const order = ['margherita', 'pepperoni', 'pineapple'];
  var total = 0.0;
  for (var pizza in order) {
    final price = pizzaPrices[pizza];
    if (price != null) {
      total += price;
    } else {
      print('*$pizza pizza is not on the menu*');
    }
  }
  print('Total amount: \$$total');

  print('\r\n----------------------------------------------\r\n');


  print('      SET EXERCISE\r\n     -----Sets-----\r\n');


  const a = { 1, 3, 7, 9, 4};
  const b = { 3, 5, 7 ,2, 1};
  final sets = a.union(b).difference(a.intersection(b));
  print('set a = $a');
  print('set b = $b');
  print('The set of the elements that belong to either `a` or `b`, but not both $sets');
  var sum = 0;
  for (var value in sets) {
    sum += value;
  }
  print('Sum of numbers in the set is $sum');
  print('\r\n----------------------------------------------\r\n');
}

