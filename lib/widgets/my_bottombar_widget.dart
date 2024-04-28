import 'package:flutter/material.dart';

class MyCustomBottombar extends StatelessWidget {
  const MyCustomBottombar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Mi cuenta"),
      ],
    );
  }
}
