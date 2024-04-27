import 'package:curso_flutter/models/http_to_inject_model.dart';

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
