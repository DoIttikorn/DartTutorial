main(List<String> args) {
  int x = 100;
  int y = 200;

  // print('x is ' + x);

  // Error: A value of type 'int' can't be assigned
  // to a variable of type 'String'.
  print('x is ' + x.toString()); // x is 100
  print('x is $x'); // x is 100
  print('x is ${x}'); // x is 100

  print('x + y is ${x + y}'); // x + y is 300
  print('x + y is ${x + y}'.runtimeType);
}
