import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({required this.currentIndex, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chatbot"),
        BottomNavigationBarItem(icon: Icon(Icons.medical_services), label: "Enciclopedia"),
        BottomNavigationBarItem(icon: Icon(Icons.medication), label: "Medicamentos"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Bienestar"),
      ],
    );
  }
}
