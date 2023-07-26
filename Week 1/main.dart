// In-line comments
// ignore_for_file: equal_elements_in_set

/*There is a 
block of code */
/// This is some documentation to the code
/// ...
/// ...

import 'dart:io';

class Num {
  var num = 10;
}

void main() {
  // First program
  print("Hello World");

  // variables
  var firstName = 'Mughees';
  String lastName = 'Mirza';
  print(firstName + ' ' + lastName);

  // Input
  stdout.write("How old are you: ");
  String? age = stdin.readLineSync();
  print("I am $age year(s) old.");

  // Available data types
  // int double bool String dynamic var

  // string types
  var st1 = 'this is a string\'';
  var st2 = "also a string' ";
  var st3 = r'raw \n string';
  print(st1);
  print(st2);
  print(st3);

  // string interpolation
  print('variable val: $age');

  // multiline strings --> either  ''' ''' or """ """

  // type conversion
  var two = int.parse('2');
  assert(two == 3.7); // only verifies the data type

  String st4 = 53.toString();
  assert(
      st4 == '53'); // no errors in terminal means type converted successfully

  // const type
  const num1 = 20;
  print(num1);
  print(num1.runtimeType);

  // unassigned variable
  var var1;
  print(var1); //~ prints null

  /// operators
  // general + - * / % > <
  // compound *= += -=
  // relational == != >= <=
  // unary ++ -- (for both post and pre)
  // logical || &&

  // null aware operator - available in advanced programming languages
  // (?.) (??) (??=)
  // to make sure the variable we are working with isnt null
  // ?. --> means if the object is valid, assign it otherwise ignore it
  // ?? assign as beetter value
  var n;
  var num2;

  num2 = n?.num ?? 90;
  print(num2);

  var num3;
  print(num3 ??= 80); // here 80 is fully assignemd to num3 variable
  print(num3);

  // ternary operator ? :
  int x = 100;
  var result = x % 2 == 0 ? 'even' : 'odd';
  print(result);

  // type test
  // using if(x is int) --> we can verify if x is integer

  /// conditional statements
  int num4 = 100;
  if (num4 == 60) {
    print("it is 60");
  } else if (num4 == 100) {
    print("its a century");
  } else {
    print("idk");
  }

  switch (num4) {
    case 60:
      print("it is 60");
    case 100:
      print("its a century");
    default:
      print("idk");
  }

  /// Loops
  // standard for loop
  for (var i = 1; i < 3; i++) {
    print(i);
  }

  // for-in loop
  var num5 = [1, 2];
  for (var n in num5) {
    print(n);
  }

  // for-each loop
  num5.forEach((n) => print(n)); // => arrow function

  // while loop
  num3 = 3;
  while (num3 > 0) {
    print('ok');
    num3--;
  }

  num3 = 2;
  // do-while
  do {
    print("ok2");
    num3--;
  } while (num3 > 0);

  // similar break and continue as python

  // collection types
  // list -- ordered collection
  // mutable type
  // index from 0
  List l1 = ['1', '2']; // var type can also be valid
  // to make sure all the elements are of same type, List <type> l2 = [];
  List<int> l2 = [2, 3, 4, 5];
  print(l1[0]);
  print(l1.length);
  print(l2);

  var l3 =
      l2; // this is just pointing the same thing not copying at the other place as well
  l2[0] = 1;
  print(l3);

  // but to clone the things the method is as follows
  // var l3 = [...l2];

  // Set
  // unordered collection
  var s1 = {2, 3, 2, 3, 2};
  for (var x in s1) {
    print(x);
    print(x.runtimeType);
  }
  // for empty set
  // 1. var s2 = <String>{};
  // 2. Set <String> s3 = {};

  // Map
  // Key value pairs
  var m1 = {'one': 1, 'two': 2, 'three': 3};

  print(m1['one']);

  // can also be defined as
  // var m2 = Map();
  // m2['one'] = 1;

  // Function calls
  showOut(square(2));
  showOut(cube(2));

  // anonymous function
  var l4 = ['a', 'b', 'c'];
  l4.forEach((x) {
    print(x);
  });

  // there also are named and positional parameters
  // generally the parameters are positional bu can be converted as
  // void sum({var x1, varx2}) this is the named parameter
  // [] makes a parameter optional
  // {} makes a parameter named and is optional by default, but a defalt value can also be assigned

}

/// Functions
dynamic square(var x) {
  return x * x;
}

void showOut(var msg) {
  print(msg);
}

// Arrow Functions
dynamic cube(var x) => x * x * x;


/// Practice related to classes
/*class Person {
  String? Name;
  int? age;

  void showOut() {
    print(Name);
    print(age);
  }
}

void main() {
  var per1 = Person();
  per1.showOut();
  per1.Name = 'Mughees';
  per1.age = 20;

  per1.showOut();
}*/
///////////////////////
/* 
class Person {
  String? Name;
  int? age;

  Person(String name, [int age = 18]) { // default constructor
  // 
    this.Name = name;
    this.age = age;
  }

  // another way to define the default constructor is
  // Person(this.Name, [this.age = 18]);

  void showOut() {
    print(Name);
    print(age);
  }
}

void main() {
  var per1 = Person('Mughees');
  per1.showOut();
  var per2 = Person('Mughees', 21);
  per2.showOut();
}

*/
///////////////////////

/*
class Person {
  String? Name;
  int? age;

  Person(this.Name, [this.age = 18]);

  Person.guest() {
    Name = 'Guest';
    age = 18;
  }

  void showOut() {
    print(Name);
    print(age);
  }
}

void main() {
  var per1 = Person.guest();
  per1.showOut();
}

*/
///////////////////////
/*
using final keyword makes a variable a run time constant and is a obect property, can't be changed once assigned
but using static const makes it a class property and can only be assesed through class

class X {
  final name;
  static const int age = 10;
  X(this.name);
}
void main(){
  var x = X('me');
  print(x.name);
  print(X.age);
}
*/

/*
class person {
  String? name;
  int? age;

  person(this.name, this.age);

  void showOut() {
    print(name);
    print(age);
  }
}

class human extends person {
  bool? alive;

  human(String name, int age, this.alive) : super(name, age);

  @override // a better practice if overriding a super class parameter
  void showOut() {
    super.showOut();
    print(alive);
  }
}

void main() {
  var h1 = human('Mughees', 21, true);
  h1.showOut();
}
*/

/*
class rect {
  num len;
  num wid;
  num? other;

  rect(this.len, this.wid, [this.other]);

  num get area => len * wid;
  set area(num val) => other = val;
}

void main() {
  var r1 = rect(5, 4);
  print(r1.area);
  print(r1.other);
  r1.area = 10;
  print(r1.other);
  
}
*/

/// Exception handling
/*int greaterThanZero(int x) {
  if (x <= 0) {
    throw Exception("Value is less than or equal to zero");
  }
  return x;
}

void verify(var val) {
  var valVerify;
  try {
    valVerify = greaterThanZero(val);
  } catch (e) {
    print(e);
  } finally {
    if (valVerify == null) {
      print('Value ain\'t accepted');
    } else {
      print('Value verified: $val');
    }
  }
}

void main() {
  verify(0);
}
*/