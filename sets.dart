void main() {
  var a = <int>{1, 3};
  var b = <int>{3, 5};

  var intersection = a.intersection(b);

  var union = a.union(b);

  var unionWithoutIntersection = union.difference(intersection);

  print(unionWithoutIntersection);

  var sum = 0;

  for (var i = 0; i < unionWithoutIntersection.length; i++) {
    sum += unionWithoutIntersection.elementAt(i);
  }

  print(sum);
}
