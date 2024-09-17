void main() {
  
  // Practica 05: Tipo de Dato Dinámico  (Dynamic - Comodín)
  
  dynamic errorMessage;
  
  print(""" El valor inicial de errorMessage es: $errorMessage
  Al ser dinámico permite la asignación de valores nulos.""");
  
  errorMessage = "El usuario y la contraseña no coinciden";
  print(""" ----------------------------------------------------------------------
  El nuevo valor  de errorMessage es: $errorMessage
  Ahora le hemos asignado un valor de un String.""");
  
  errorMessage = 404;
  print(""" ----------------------------------------------------------------------
  El nuevo valor  de errorMessage es: $errorMessage
  En algunos sistemas los errores son controlados por un código numérico""");
  
  errorMessage = false;
  print(""" ----------------------------------------------------------------------
  El nuevo valor  de errorMessage es: $errorMessage
  Cuando el sistema funcioa correctamente el mensaje de error puede se FALSO.""");
  
  errorMessage = [400,404,500,502,505];
  print(""" ----------------------------------------------------------------------
  El nuevo valor  de errorMessage es: $errorMessage
  En caso de que el Sistema detecte varios errores podría agregarlos a una Lista""");
  
  errorMessage = {125,"Usuario No Encontrado",true,-1025.16,'A'};
  print(""" ----------------------------------------------------------------------
  El nuevo valor  de errorMessage es: $errorMessage
  O incluso cómo un conjunto (SET) de datos.""");
  
  errorMessage = () => true;
  print(""" ----------------------------------------------------------------------
  El último cambio a errorMessage es: $errorMessage
  Que en este caso es el resultado de una función.""");
  
 }
