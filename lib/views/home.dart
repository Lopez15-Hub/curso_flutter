import 'package:curso_flutter/widgets/home_body_widget.dart';
import 'package:curso_flutter/widgets/my_bottombar_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        elevation: 10,
        title: const Text("Curso de flutter"),
      ),
      body: const HomeBody(),
      bottomNavigationBar: const MyCustomBottombar(),
    );
  }
}
