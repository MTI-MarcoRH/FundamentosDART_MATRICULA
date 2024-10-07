void main() {

  final mySquare = Square( side: 10 );
  print("""El lado del cuadrado es de : ${mySquare._side}
  su área es de: ${ mySquare.area }""");
  mySquare.side = -5;
  print("""El lado del cuadrado es de : ${mySquare._side}
  su área es de: ${ mySquare.area }""");
}

class Square {
  double _side; // side * side
  Square({ required double side })
     : assert(side > 0, 'El valor del lado debe ser mayor a 0 '),
       _side = side;

  double get area {
    return _side * _side;
  }

  set side( double value ) {
    print('setting new value $value');
    if ( value < 0 ) throw 'Value must be >=0';

    _side = value;

  }

  double calculateArea() {
    return _side * _side;
  }
}