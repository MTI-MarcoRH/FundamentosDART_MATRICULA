void main() {
  //FUNCIONES
  //1. Llamado de una Función Básica
  greetEveryone();
  //2. Llamado de una Función que retorna un valor
  //2.1 Si no deseamos almacenar el valor, se invoca normalmente
  print("Hoy es el día número ${getDayNumber()}");
  //2.2 Necesitamos almacenar el valor retornado para utilizar su valor en otras operaciones del programa
  final numeroDia = getDayNumber();
  print("En 3 días estaremos a: ${(numeroDia + 3)}");

  //3. Llamado de una función con parámetros
  print(greetSomeone("Marco A."));
  //3.1 Y que pasa si intentamos?
  print(greetSomeone(45));
  print(greetSomeone(-15));
  print(greetSomeone(3.141516));
  print(greetSomeone(true));
  //3.2
  /*print(greetSomeoneTyped(45));
  print(greetSomeoneTyped(-15));
  print(greetSomeoneTyped(3.141516));
  print(greetSomeoneTyped(true));*/
  print(greetSomeoneTyped("Hugo Sánchez"));

  //4. Llamado de Funciones con varios parámetors posicionales.
  //Para este caso los parámetros deben ser enviado sen la posición exacta y según DART ambos por defecto son obligatorios
  print(greetSomeoneHourOfDay("Marco A.", 21));
  // ¿Qué pasa si solo envío un solo parámetro?
  /*print(greetSomeoneHourOfDay(null, null));*/
  /*print(greetSomeoneHourOfDay("Marco"));*/
  /*print(greetSomeoneHourOfDay(10));*/
  /* Analizando la función determinamos que la hora del día puede ser nulo , y se puede definir con la hora actual del SO.*/
  print(greetSomeoneHourOfDay("Adalid.", null));
  print(greetSomeoneHourOfDay("María."));

  //5. FUNCIONES LAMBDA, ANONIMAS, ARROW FUNCTIONS, FUNCIONES FLECHA
  // Las funciones lambda, tambien conocidas cómo funciones anonimas o funciones flecha, se ejecutan de manera simple y no frecuente en laejecución de un programa o sistema, en DART estas funciones solo pueden tener una sola instrucción para usar el operador =>
  //final double costoTotal;
  var calculaTotalCarrito = (double productQuantity, double productPrice,
          double percentageDiscount) =>
      (productQuantity * productPrice) * ((100 - percentageDiscount) / 100);

  double cantidad = 3.180;
  double precio = 1725.10;
  double descuento = 8;

  print("""Costo del Producto: ${precio}
  Cantidad solicitada: ${cantidad}
  Descuento definido: ${descuento}
  -----------------------------------------------------------
  Costo Total:  ${calculaTotalCarrito(cantidad, precio, descuento)}""");

  //6. Llamado de una Función con parámetros nombrados
  print(infoCarListStatus(buyerName: "Gabriela"));

  //6.1 Llamado de una función con los parámetro en desorden posicional
  print(infoCarListStatus(
      status: "En espera de pago",
      amountCarList: 2416.20,
      buyerName: "Alexia"));
}

//1. FUNCIONES SIN PARÁMETROS Y SIN RETORNO DE VALOR
greetEveryone() // <-- dynamic
{
  print("Hola a Todas y Todos desde DART");
}

//2. FUNCIONES QUE RERTORNAN VALROES
int getDayNumber() //<- Retorna un entero
{
  DateTime now = DateTime.now();
  return now.day;
}

//3. FUNCIONES QUE REQUIEREN DE ALMENOS UN PARÁMETRO (Sin Tipificación)
String greetSomeone(personName) {
  return "Hola, ${personName}";
}

// 3.1. FUNCIÓN QUE RECIBE PARAMETROS TIPIFICADOS
String greetSomeoneTyped(String personName) {
  return "Hola, ${personName}";
}

// 4. FUNCIONES QUE RECIBE MAS DE UN PARAMETRO
// int?  - Puede ser vacio
// [] - Puede ser Oocional
String greetSomeoneHourOfDay(String personName, [int? hourDay]) {
  String greeting;
  // El operador ??= significa que si es nulo lo inicialice cómo, en caso de que tenga valor ignora la instrucción
  hourDay ??= DateTime.now().hour;
  print("Hora: ${hourDay}");

  if (hourDay >= 6 && hourDay < 12) {
    greeting = "Buenos días";
  } else if (hourDay >= 12 && hourDay < 18) {
    greeting = "Buenas Tardes";
  } else {
    greeting = "Buenas Noches";
  }

  return "${greeting}, ${personName}";
}

//6. FUNCIONES CON PARAMETOS NOMBRADOS

String infoCarListStatus(
    {required String buyerName,
    double amountCarList = 0.0,
    String status = "Selección de Productos"}) {
  return "El carrito de compras de: ${buyerName}, tiene un total de: \$${amountCarList} y actualmente está en estatus: ${status}";
}
