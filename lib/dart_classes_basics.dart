// clases (Se declara con la palabra reservada "class")


//Atributos implicitos / explícitos

import 'package:curso_flutter/models/injected_http_model.dart';
import 'package:curso_flutter/models/person_model.dart';
import 'package:curso_flutter/services/http_service.dart';
import 'package:curso_flutter/services/payment_service.dart';
import 'package:curso_flutter/services/user_service.dart';

final personTest = Person("Nekulman", "33.333.333", num: 0, name: "Marcos");

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
  if (payment.success) return "El pago fue exitoso";
  //nota: no siempre el else cuando hacemos returns.

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
