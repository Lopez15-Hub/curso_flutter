//Programación estructurada
// Dart es un lenguaje compilado fuertemente tipado

// Tipos de variables en dart
// Para declarar: const, final, var
// Final solo se puede declarar en variables
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';

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

// Funciones y tipos de funciones

// Para imprimir datos en consola:
// Si una función realiza un procedimiento pero no retorna datos, se utiliza la palabra reservada "void".

void printName() {
  //Los prints se deben utilizar siempre a modo de visualización para facilitar la depuración de errores. No deben quedar en el código cuando se resuelve el problema.
  print(pedroName);
  debugPrint(pedroName);
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

// Estructuras de control

// Estructuras condicionales

//if,else, switch-case, if ternario :  (a+b? return "hola" : return "chau";)

void checkPlaftorm(Platform platform) {
  if (Platform.isAndroid) {
    print("Hola estás programando en $platform");
  } else {
    print("¡Ups! Plataforma no detectada.");
  }
  //If sin llaves
  //Consideración: Si es muy largo el texto o hay muchos procedimientos, encerrar en bloque (usando llaves{});
  if (Platform.isAndroid) print("Hola estás programando en $platform");
}

void checkPlaftormTernary(Platform platform) {
  Platform.isAndroid
      ? print("Hola estás programando en $platform")
      : print("¡Ups! Plataforma no detectada.");
}

void readPlaftorm(ConnectionState connectionStatus) {
  switch (connectionStatus) {
    case ConnectionState.active:
      print("La conexión está activa");
      break;

    case ConnectionState.waiting:
      print("Cargando...");
      break;
    case ConnectionState.done:
      print("Mostrando datos...");
      break;

    default:
      print("No hay conexión.");
      break;
  }
}

// Estructuras repetitivas
//for , for in while do-while,

fnFor() {
  for (int i = 0; i <= 10; i++) {
    print(i);
  }
  // For sin llaves
  for (int i = 0; i <= 10; i++) {
    print(i);
  }
}

fnForIn() {
  final persons = [];
  //Por lo general, person, se declara con el tipo que estamos trabajo: ejemplo (user);
  for (dynamic person in persons) {
    print(person);
  }
}

fnWhile() {
  while (true) {
    print(10 + 4);
  }
}

fnDo() {
  do {
    print(18 + 1);
  } while (true);
}

// clases (Se declara con la palabra reservada "class")

class Person {
  //Declaración de variables
  //Si hay algo sin utilizar es buena eliminarlo para ahorrar lineas de código, limpiarlo y que sea más sencillo de mantener.
  final int num;
  //Atributo publico
  final String name;
  //Atributo privado
  final String _lastName;
  // Getters y setters
  // generar un atributo privado no final:
  String _dni;

  // Getter de dni sería:
  String get myDni => _dni;
  // Setter de dni sería
  set defineDni(String newDni) => _dni = newDni;

  //Atributos / Metodos estáticos se utiliza "static"

  static const String dni = "33.333.333";
  //No se puede utilizar un atributo de instancia dentro de un metodo estático ejemplo: intentar mostrar _lastName en showCustomName();

  //Nota: Los metodos y variables que sea privados, deben ser utilizados. No es buena práctica dejarlos sin uso. Lo que no sirva o no se esté utilizando, se elimina. No debería quedar en el código.
  static void _showCustomName() => print("Juan roberto riquelme");

  static String returnCustomName() {
    _showCustomName();
    return "Juan roberto riquelme";
  }

  static String returnCustomNameArrow() => "Juan roberto riquelme";

  //Metodos de clase
  String showLastName() => _lastName;
  void printLastName() => print(_lastName);

  //Nota: El constructor de la clase, no es "constructor"
  void constructor() {
    //esto es un metodo, no una palabra reservada.
  }

  //Para generar el constructor se debe llamar la instancia de la clase tal que así:

  //Declaración de variables formales.
  //Declaráción sin nombrar (implícita) Ejemplo:
  //   Person(this.num);

  //Declaración de variables formales.
  //Declaráción explícita
  // "required" indica que la variable es requerida para la instancia de la clase.
  Person(this.name, this._lastName, this._dni, {required this.num});
}

class HttpToExtend {
  get(String url) {}
  post(String url, dynamic body) {}
  put() {}
  delete() {}
}

// clases abstractas
abstract class HttpToInject {
  get(String url) {}
  post(String url, dynamic body);
  put();
  delete();
}

//Herencia y Inyección

//Ejemplo de extensión
class HttpService extends HttpToExtend {
  @override
  get(String url) {}
  @override
  post(String url, dynamic body) {}
  @override
  put() {}
  @override
  delete() {}

  patch() {}
}

//Ejemplo de implementación
class InjectedHttp implements HttpToInject {
  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  put() {
    // TODO: implement put
    throw UnimplementedError();
  }

  @override
  get(String url) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  post(String url, body) {
    // TODO: implement post
    throw UnimplementedError();
  }
}

//Clase para inyectar;

class UsersService {
  final String _endpoint = "https://my-api.com/users";
  final HttpToInject client;
  UsersService(this.client);

  getMyUser() => client.get(_endpoint);
}

class PaymentService {
  final String _endpoint = "https://my-api.com/payments";
  final HttpToInject client;
  PaymentService(this.client);

  pay(dynamic body) {
    final payment = client.post(_endpoint, {});
    // 4. Si el pago fue exitoso, notificar, sino avisar del error.
    if (payment.success) {
      return "El pago fue exitoso";
    } //nota: no siempre el else cuando hacemos returns.

    return "Falló el pago.";
  }
}

//Teoría 1: La diferencia entre extender una clase e implementarla es que cuando implementas la clase, es obligatorio que crees todos los metodos definidos en la clase padre
//Teoría 2: La clase abstracta a diferencia de una común es una clase en la cual se define cómo debe lucir las clases que implementen su estructura

//Ejemplos de uso de clases;

//Realizar sin inyectar.
authorizePayment() {
  //Authorize payment depende del id del usuario para aceptar el pago.
  //1. Crear la instancia de http
  final http = HttpService();
  // 2. Obtener mi usuario
  final user = http.get("https://my-api.com/user/my");
  //3. Realizar el pago
  final payment = http.post("url", user);
  // 4. Si el pago fue exitoso, notificar, sino avisar del error.
  if (payment.success) {
    return "El pago fue exitoso";
  } //nota: no siempre el else cuando hacemos returns.

  return "Falló el pago.";
}

//Realizar el pago Con injección
makePayment() {
  //Lo que pasa en esta función es que se respeta el principio de responsabilidad única (SRP)
  //Instancio userService
  final userService = UsersService(InjectedHttp());
  //Instancio paymentService
  final paymentService = PaymentService(InjectedHttp());
  //Obtengo mi usuario a través del servicio (Delego responsabilidad)
  final my = userService.getMyUser();
  //Realizo el pago del servicio de pagos(Delego responsabilidad) pasándole mi usuario
  return paymentService.pay(my);
}
