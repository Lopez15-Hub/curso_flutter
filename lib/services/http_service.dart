//Herencia y Inyección

//Ejemplo de extensión
import 'package:curso_flutter/models/http_to_extend_model.dart';

class HttpService extends HttpToExtend {
  //Override indica que los metodos de la clase padre, son sobreescritos.
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
