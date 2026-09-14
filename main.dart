import 'dart:io';
enum Op { plus, minus, multiply, divide }
int add(int x, int y) => x + y;
int substract(int x, int y) => x - y;
int inc(int x) => ++x;
int dec(int y) => --y;
/*
we can have function- as parameter
  or even API
 */
int apply(int x, Function f) {
  return f(x);
}

class Laptop{
  Laptop({name, color}) {
    print('Laptop constructor');
    print('name: $name');
    print('color: $color');

  }

}
class MacBook extends Laptop{
  //constructor with name parameters
  MacBook({name, color}): super(name: name, color: color){
    print("Macbook contructor");
  }
}


main() {
  // null aware access it will say where the problem
  // prevents from crashing
  var val;

  /*
  null aware assignement
   */
  var num; // null
  num ??= 5;
  print(num); //5
  num ??= 6; // not null anymore
  print(num); // 5

  /*
  null operator
    if not null, the result is left hand side
    if null, it will take the right hand side

   */

  print(0 ?? 1); // 0
  var macbook = MacBook(name: "Macbook Pro", color: "Silver");
  /**
   * to overload a constructor nameoftheclass.name(par) {}
   *
   */
  int r = apply(3, inc);
  int r2 = apply(5, dec);
  print(r);
  print(r2);
  /*
  anonymous functions
   */
  // var words = ['sky', 'cloud', 'forest', 'welcome'];
  // words.forEach((String word) {
  //   print('$word has ${word.length} characters');
  // });

  // print(add(3, 5));
  // print(substract(5, 4));
  // /*
  // get the value from the user
  //  */
  // print('enter x');


  //! I do not the user to enter null
  // var x =double.parse(stdin.readLineSync()!);
  // var x =double.tryParse(stdin.readLineSync()!) ?? 0.0;
  // print('enter y');
  //
  // //! I do not the user to enter null
  // var y =double.parse(stdin.readLineSync()!);
  //
  // print('x = $x y = $y');
  // var sum =  x + y;
  //
  // print('sum $sum');
  // var avg = sum / 2;
  // print('average = $avg');

  double tempF = 90.25;
  double tempC = (tempF - 32) /1.8;
  print('${tempF.toStringAsFixed(1)} F = ${tempC.toStringAsFixed(1)}C');
  print('${tempF.toStringAsFixed(2)} F = ${tempC.toStringAsFixed(2)}C');


  const a = 4;
  const b = 4;
  const op = Op.minus;
  switch (op) {
    case Op.plus:
      print('$a + $b = ${a + b}');
      break;
    case Op.minus:
      print('$a - $b = ${a - b}');
      break;
    case Op.multiply:
      print('$a * $b = ${a * b}');
      break;
    case Op.divide:
      print('$a / $b = ${a / b}');
      break;
  }
}
