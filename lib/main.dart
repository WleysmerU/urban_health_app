import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/chatbot/chatbot_screen.dart';
import 'screens/encyclopedia_screen.dart';
import 'screens/medication_screen.dart';
import 'screens/medical_history_screen.dart';
import 'screens/emergencies_screen.dart';
import 'screens/wellness_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Urban Health',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Define la ruta inicial
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/chatbot': (context) => ChatbotScreen(),
        '/encyclopedia': (context) => EncyclopediaScreen(),
        '/medications': (context) => MedicationGuideScreen(),
        '/medical_history': (context) => MedicalHistoryScreen(),
        '/emergencies': (context) => EmergenciesScreen(),
        '/wellness': (context) => WellnessScreen(),
      },
    );
  }
}
