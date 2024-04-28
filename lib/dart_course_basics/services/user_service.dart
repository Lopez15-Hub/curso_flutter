//Clase para inyectar;

import 'package:curso_flutter/dart_course_basics/models/http_to_inject_model.dart';

class UsersService {
  final String _endpoint = "https://my-api.com/users";
  final HttpToInject client;
  UsersService(this.client);

  getMyUser() => client.get(_endpoint);
}
