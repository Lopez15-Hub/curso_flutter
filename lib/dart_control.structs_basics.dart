// Estructuras de control

// Estructuras condicionales

//if,else, switch-case, if ternario :  (a+b? return "hola" : return "chau";)

import 'dart:io';

import 'package:flutter/material.dart';

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
