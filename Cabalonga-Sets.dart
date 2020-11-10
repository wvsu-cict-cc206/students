void main() {
  int sum = 0;
  Set<int> a = {1, 3, 6, 8, 2, 7};
  Set<int> b = {3, 5, 7, 6, 10};

  Set<int> result = a.union(b).difference(a.intersection(b));
  print(
      'Set of the elements that belong to either a or b, but not both: $result');
  result.forEach((element) {
    sum += element;
  });
  print('Sum of items: $sum');
}
