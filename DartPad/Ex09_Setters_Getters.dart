void main()
{
  final mySquare = Square(_side:18);
  
  mySquare._side =-32;

  print("""Lado del Cuadrado: ${mySquare._side}
  Área que ocupa: ${mySquare.calculateArea()}""");
}

class Square {
   double _side; // Formula para calcular el Área  lado * lado
  Square({required double side})
    :_side=:side;

double get area
{
  return _side*_side
}

  set side(double value)
  {
     print("Asignando un nuevo valor al lado : $value");
    if(value <0 ) throw 'El valor del lado debe ser mayor a 0.';

    _side= value;
  }
  
  double calculateArea()
  {
    return side*side;
  }
}
