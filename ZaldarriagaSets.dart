void main(){
  const a = { 1, 3, 7, 10, 9 };
  const b = { 3, 5, 6, 10, 8 };
  
  List arrJez = new List();
  int sum = 0;

 
  a.forEach((element) {
    if (!b.contains(element)){
      arrJez.add(element);
      sum = sum + element;
    }

  });
  b.forEach((element) {
    if (!a.contains(element)){
      arrJez.add(element);
      sum = sum + element;
    }

  });

  print(arrJez);
  print("Sum: $sum");
}