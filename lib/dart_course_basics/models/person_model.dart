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
  Person(
    this._lastName,
    this._dni, {
    required this.num,
    this.name = "",
  });
}
