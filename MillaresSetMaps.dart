// MAP EXERCISE //
void main() {
   const pizzaPrices = {
   'margherita': 5.5,
   'pepperoni': 7.5,
   'vegetarian': 6.5,
   };
   const order = ['margherita', 'pepperoni', 'pineapple'];
   var total = 0.0;
   for (var item in order) {
       final price = pizzaPrices[item];
       if (price != null) {
         total += price;
       } else {
         print('$item pizza is not on the menu');
       }
   }
   print ('Total: \$$total');
}

// SETS EXERCISE //
void main() {
  const a = { 1, 3, 5, 7, 9 };
  const b = { 2, 4, 6, 8 };
  final c = a.union(b).difference(a.intersections(b));
  print(c);
  var sum = 0;
  for (var value in c) {
    sum += value;
  }
    print(sum);
}
