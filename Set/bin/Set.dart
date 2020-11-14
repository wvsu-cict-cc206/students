void main(List<String> arguments) {
  print('SET EXERCISE');

  const a = <int>{20, 5, 9, 7, 19, 28};
  const b = <int>{4, 7, 9, 18, 20, 28};
  var exA = (a.difference(b));
  var exB = (b.difference(a));
  var unionAB = exA.union(exB);

  print("Set a: " + a.toString());
  print("Set b: " + b.toString());

  print("Set of elements that belong to either 'a' or 'b', but not both are: "+ unionAB.toString());
  var sum = unionAB.reduce((a, b) => a + b);
  print("Sum of the set: " + sum.toString());
}
