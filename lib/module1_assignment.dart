void main() {
  const int a = 55;
  const int b = 17;

  int add, sub, mul, mod;
  double div;

  add = a + b;
  sub = a - b;
  mul = a * b;
  div = a / b;
  mod = a % b;

  print('a = $a, b = $b');
  print('Addition: $a + $b = $add');
  print('Subtraction: $a - $b = $sub');
  print('Multiplication: $a * $b = $mul');
  print('Division: $a / $b = $div');
  print('Modulus: $a % $b = $mod');
}
