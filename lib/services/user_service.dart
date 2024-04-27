//Clase para inyectar;

import 'package:curso_flutter/models/http_to_inject_model.dart';

class UsersService {
  final String _endpoint = "https://my-api.com/users";
  final HttpToInject client;
  UsersService(this.client);

  getMyUser() => client.get(_endpoint);
}
