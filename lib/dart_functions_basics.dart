// Funciones y tipos de funciones

// Para imprimir datos en consola:
// Si una función realiza un procedimiento pero no retorna datos, se utiliza la palabra reservada "void".

import 'dart:developer';

import 'package:flutter/material.dart';

void printName() {
  //Los prints se deben utilizar siempre a modo de visualización para facilitar la depuración de errores. No deben quedar en el código cuando se resuelve el problema.
  print("");
  debugPrint("");
  log("message");
}

// Si una función realiza un procedimiento y retorna un resultado, se especifica el tipo de retorno o en su defecto, no se declara y queda de tipo "dynamic" ".

sum(dynamic a, dynamic b) {
  return a + b;
}

dynamic sumTwoNumbers(int a, double b) {
  return "${a + b}";
}

String getResult(int a, double b) {
  return "Sum Result: ${a + b}";
}

int sumTwoIntegers(int a, int b) {
  return a + b;
}
