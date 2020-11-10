void main() {
  const pizza = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  print("Pizza Menu");
  pizza.forEach((k, v) => print('${k}: ${v}'));

  const order = ['margherita', 'pepperoni', 'pineapple']; //given order
  double sum = 0;
  print('');
  print('Your order: ');
  print(order);
  order.forEach((element) {
    if (pizza.containsKey(element) == true) {
      sum += pizza[element];
    } else {
      print('Sorry, $element is not on the menu.');
    }
    ;
  });
  print('');
  print('Total: \$' + sum.toString());
}
