import 'package:flutter/material.dart';

class WellnessScreen extends StatelessWidget {
  final List<Map<String, String>> wellnessCategories = [
    {
      "title": "Salud Mental",
      "description": "Consejos para mejorar tu bienestar emocional.",
    },
    {
      "title": "Ejercicio Físico",
      "description": "Rutinas de ejercicio para mantenerte en forma.",
    },
    {
      "title": "Nutrición",
      "description": "Consejos sobre hábitos alimenticios saludables.",
    },
    {
      "title": "Sueño",
      "description": "La importancia de un buen descanso y cómo lograrlo.",
    },
    {
      "title": "Hidratación",
      "description": "Mantén tu cuerpo hidratado para mejorar tu salud.",
    },
    {
      "title": "Manejo del Estrés",
      "description": "Estrategias para reducir el estrés en tu vida diaria.",
    },
    {
      "title": "Prevención de Enfermedades",
      "description": "Cómo prevenir enfermedades comunes con hábitos saludables.",
    },
    {
      "title": "Autocuidado",
      "description": "Prácticas de autocuidado para tu bienestar físico y mental.",
    },
    {
      "title": "Relaciones Saludables",
      "description": "Cómo mantener relaciones positivas con los demás.",
    },
    {
      "title": "Bienestar Emocional",
      "description": "Cómo mejorar tu bienestar emocional y afrontar las emociones.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienestar'),
        backgroundColor: Color(0xFF2ECC71),
      ),
      body: ListView.builder(
        itemCount: wellnessCategories.length,
        itemBuilder: (context, index) {
          final category = wellnessCategories[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(category["title"]!),
              subtitle: Text(category["description"]!),
              onTap: () {
                // Navegar a la pantalla de detalles de bienestar
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WellnessDetailScreen(category: category),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class WellnessDetailScreen extends StatelessWidget {
  final Map<String, String> category;

  const WellnessDetailScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Aquí agregamos el contenido detallado por cada categoría
    String detailedAdvice = '';
    String additionalResources = '';

    switch (category["title"]) {
      case "Salud Mental":
        detailedAdvice = "Practica mindfulness y técnicas de relajación como la meditación y la respiración profunda.";
        additionalResources = "Apps como Calm y Headspace pueden ser útiles.";
        break;
      case "Ejercicio Físico":
        detailedAdvice = "Realiza al menos 30 minutos de actividad física diaria, como caminar, nadar o practicar yoga.";
        additionalResources = "Consulta videos de YouTube o aplicaciones como Nike Training Club.";
        break;
      case "Nutrición":
        detailedAdvice = "Consume una dieta equilibrada rica en frutas, verduras, proteínas magras y granos enteros.";
        additionalResources = "Consulta con un nutricionista para planes personalizados.";
        break;
      case "Sueño":
        detailedAdvice = "Asegúrate de dormir entre 7 y 9 horas por noche. Establece una rutina de sueño regular.";
        additionalResources = "Apps como Sleep Cycle pueden ayudarte a monitorizar tu sueño.";
        break;
      case "Hidratación":
        detailedAdvice = "Bebe al menos 8 vasos de agua al día. La hidratación es clave para la función cerebral y la energía.";
        additionalResources = "Utiliza aplicaciones como Water Reminder para recordar beber agua.";
        break;
      case "Manejo del Estrés":
        detailedAdvice = "Practica técnicas de manejo del estrés como la meditación, ejercicios de respiración y tiempo libre.";
        additionalResources = "Busca terapias o programas de relajación online.";
        break;
      case "Prevención de Enfermedades":
        detailedAdvice = "Mantén una rutina de chequeos médicos y sigue las pautas de vacunación recomendadas.";
        additionalResources = "Visita sitios web de salud pública para guías de prevención.";
        break;
      case "Autocuidado":
        detailedAdvice = "Dedica tiempo a actividades que te gusten, como leer, tomar un baño relajante o pasar tiempo con seres queridos.";
        additionalResources = "Apps como 'Self Care' pueden sugerir rutinas de autocuidado.";
        break;
      case "Relaciones Saludables":
        detailedAdvice = "Practica la comunicación abierta y honesta, y establece límites saludables con los demás.";
        additionalResources = "Lee libros sobre relaciones y bienestar emocional, como 'Los 5 lenguajes del amor'.";
        break;
      case "Bienestar Emocional":
        detailedAdvice = "Afronta tus emociones de manera saludable, expresándote de manera abierta y buscando apoyo si lo necesitas.";
        additionalResources = "Consulta con un terapeuta o coach emocional si es necesario.";
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(category["title"]!),
        backgroundColor: Color(0xFF2ECC71),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Descripción:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(category["description"]!),
            SizedBox(height: 16),
            Text(
              "Consejos y Recomendaciones:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(detailedAdvice),
            SizedBox(height: 16),
            Text(
              "Recursos Adicionales:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(additionalResources),
          ],
        ),
      ),
    );
  }
}
