//Programación estructurada
// Dart es un lenguaje compilado fuertemente tipado

// Tipos de variables en dart
// Para declarar: const, final, var
// Final solo se puede declarar en variables

import 'package:curso_flutter/dart_course_basics/dart_functions_basics.dart';

const pi = 3.147;
var num = 10;
final person = {"name": "pedro"};

//Tipos de datos:
// String, boolean, number, double, int, float, array
// Para tipos de dato variables, se les denomina "dynamic" (dynamic = any en js)

//Enteros
int par = 10;
const int newNumber = 33;
final int result = sum(newNumber, 12);

//Decimales
double decimal = 10.5;
const double monthSallary = 12450.99;
final double resultDecimal = sum(monthSallary, 12.999);
//String
String name = "Pedro";
String lastName = "Surich";
const String formattedSallary = "\$ $monthSallary";
final String workerData = "$name $lastName \n Salario: $formattedSallary";

//List o List<Type> (Es el equivalente a array)
List collectionWithAnyValues = [
  workerData,
  {},
  10,
];
final List<dynamic> dynamicCollection = [
  workerData,
  {},
  10,
];
//Los símbolos mayor y menor, pueden representar un tipo de dato.
// Añadir estos símobolos puede alterar todo el tipo. Ejemplo:
final List<String> persons = [workerData, "Javier"];

//Map<dynamic, dynamic> (O el equivalente a un Objeto en javascript o un mapa)
//Un mapa está compuesto por una clave "" seguida de su valor. Ejemplo:
// {"name":"Pedro","lastName":"Surich"}

Map myAwesomePerson = {"name": "Pedro", "lastName": "Surich"};
final Map myAwesomePerson2 = {"name": "Pedro", "lastName": "Surich"};

//Los símbolos mayor y menor, pueden representar un tipo de dato.
// Añadir estos símobolos puede alterar todo el tipo. Ejemplo:
final Map<String, String> myAwesomePerson3 = {
  "name": "Pedro",
  "lastName": "Surich"
};
// En algunas ocasiones se puede declarar la clave del mapa sin comillas ejemplo:
final Map<String, String> myAwesomePerson4 = {
  name: "Pedro",
  lastName: "Surich"
};
//Para acceder a las propiedades del mapa:
final pedroName =
    myAwesomePerson3["name"]; // Es el equivalente a myAwesomePerson3.name

