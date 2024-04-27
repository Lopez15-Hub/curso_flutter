//Asíncronismo
// En Javascript, las funciones pueden ser declaras cómo "async" y esperar un resultado usando "await", acá también

import 'package:http/http.dart' as http;

//Ejemplo básico (Get simple)
fetchPokemons() async {
  return await http.get(Uri.parse("https://pokeapi.co/api/v2/"));
}

//Ejemplo, guardando response
Future<String> fetchPokemonsUsingResult() async {
  // Cuál es el tipo de dato que toma result?
  // Result sin await puede tomar un tipo "Future";
  // Un Future es un tipo de dato, asíncrono que tiene que ser esperado, para obtener un resultado.
  // Para ser más claros, es un tipo de dato, que te va a dar el resultaod en el futuro, y no al instante.
  final result = await http.get(Uri.parse("https://pokeapi.co/api/v2/"));
  // result.body -  Es el cuerpo de la respuesta y normalmente tiene los datos que necesitamos para trabajar.
  // result.statusCode - Codigo http de la respuesta
  return result.body;
}
