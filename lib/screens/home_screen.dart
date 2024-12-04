import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key); // Constructor const agregado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Urban Health"),
        backgroundColor: const Color(0xFF2ECC71),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "¡Bienvenido!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Selecciona una opción para comenzar:",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildOptionCard(
                    context,
                    icon: Icons.chat_bubble,
                    label: "Chatbot",
                    route: '/chatbot',
                  ),
                  _buildOptionCard(
                    context,
                    icon: Icons.medical_services,
                    label: "Enciclopedia",
                    route: '/encyclopedia',
                  ),
                  _buildOptionCard(
                    context,
                    icon: Icons.medication,
                    label: "Medicamentos",
                    route: '/medications',
                  ),
                  _buildOptionCard(
                    context,
                    icon: Icons.history,
                    label: "Historial Médico",
                    route: '/medical_history',
),
                  _buildOptionCard(
                    context,
                    icon: Icons.emergency,
                    label: "Emergencias",
                    route: '/emergencies',
                  ),
                  _buildOptionCard(
                    context,
                    icon: Icons.health_and_safety,
                    label: "Bienestar",
                    route: '/wellness',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard(BuildContext context,
      {required IconData icon, required String label, required String route}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        color: const Color(0xFFE6F2FF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: const Color(0xFF2ECC71)),
            const SizedBox(height: 10),
            Text(label, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
