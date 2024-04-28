import 'package:flutter/material.dart';

//Un widget en cambio, no lleva scaffold
// Por qué? Porque generalmente se insertan dentro de un scaffold
class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Mi perro pepe",
          style: TextStyle(color: Colors.white),
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Pagar",
              )),
        ),
        const Card(
          elevation: 10,
          child: Text("Esta es mi card"),
        )
      ],
    );
  }
}
