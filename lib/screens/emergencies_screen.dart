import 'package:flutter/material.dart';

class EmergenciesScreen extends StatelessWidget {
  final List<Map<String, String>> emergencyCategories = [
    {
      "title": "Inmersión en Cuerpo de Agua",
      "description": "Instrucciones para el rescate y primeros auxilios en caso de inmersión en agua.",
    },
    {
      "title": "Heridas y Cortes",
      "description": "Instrucciones para tratar heridas y cortes.",
    },
    {
      "title": "Quemaduras",
      "description": "Pasos para tratar quemaduras de diferentes grados.",
    },
    {
      "title": "Ataques Cardíacos",
      "description": "Acciones a seguir en caso de un ataque al corazón.",
    },
    {
      "title": "Asfixia",
      "description": "Cómo actuar si alguien está sufriendo asfixia.",
    },
    {
      "title": "Accidente de Tráfico",
      "description": "Pasos a seguir en caso de un accidente vehicular.",
    },
    {
      "title": "Electrocución",
      "description": "Instrucciones para actuar ante una persona electrocutada.",
    },
    {
      "title": "Mordeduras de Serpiente",
      "description": "Qué hacer si una persona es mordida por una serpiente.",
    },
    {
      "title": "Envenenamiento",
      "description": "Acciones para atender a una persona intoxicada o envenenada.",
    },
    {
      "title": "Desmayo",
      "description": "Pasos a seguir en caso de desmayo o pérdida de conciencia.",
    },
    {
      "title": "Atragantamiento",
      "description": "Qué hacer en caso de que una persona se atragante.",
    },
    {
      "title": "Lesiones en la Cabeza",
      "description": "Instrucciones para manejar lesiones en la cabeza.",
    },
    {
      "title": "Intoxicación por Monóxido de Carbono",
      "description": "Pasos a seguir en caso de intoxicación por monóxido de carbono.",
    },
    {
      "title": "Sismos",
      "description": "Cómo actuar durante y después de un terremoto o sismo.",
    },
    {
      "title": "Accidentes Acuáticos",
      "description": "Qué hacer en caso de ahogamiento o accidentes en cuerpos de agua.",
    },
    {
      "title": "Alergias Graves",
      "description": "Qué hacer en caso de una reacción alérgica grave.",
    },
    {
      "title": "Ataques de Epilepsia",
      "description": "Pasos a seguir durante un ataque de epilepsia.",
    },
    {
      "title": "Golpe de Calor",
      "description": "Cómo actuar en caso de golpe de calor o insolación.",
    },
    {
      "title": "Accidente de Trabajo",
      "description": "Pasos a seguir en caso de un accidente laboral.",
    },
    {
      "title": "Maltrato Infantil",
      "description": "Cómo identificar y actuar ante casos de maltrato infantil.",
    },
    {
      "title": "Emergencias Psicológicas",
      "description": "Qué hacer en situaciones de crisis psicológicas o emocionales.",
    },
    {
      "title": "Desastres Naturales",
      "description": "Cómo actuar durante inundaciones, deslizamientos de tierra, o huracanes.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guía de Emergencias'),
        backgroundColor: Color(0xFF2ECC71),
      ),
      body: ListView.builder(
        itemCount: emergencyCategories.length,
        itemBuilder: (context, index) {
          final emergency = emergencyCategories[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(emergency["title"]!),
              subtitle: Text(emergency["description"]!),
              onTap: () {
                // Navegar a la pantalla de detalles de emergencia
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmergencyDetailScreen(emergency: emergency),
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

class EmergencyDetailScreen extends StatelessWidget {
  final Map<String, String> emergency;

  const EmergencyDetailScreen({Key? key, required this.emergency}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(emergency["title"]!),
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
            Text(emergency["description"]!),
            SizedBox(height: 16),
            Text(
              "Pasos a Seguir:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            _getSteps(emergency["title"]!),
            SizedBox(height: 16),
            Text(
              "Números de Emergencia:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text("Cruz Roja: 132"),
            Text("Defensa Civil: 144"),
            Text("Policía: 123"),
            Text("Llamada de Emergencia General: 112"),
          ],
        ),
      ),
    );
  }

  // Método para retornar los pasos específicos de cada emergencia
  Widget _getSteps(String emergencyType) {
    switch (emergencyType) {
      case "Inmersión en Cuerpo de Agua":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Saca a la persona del agua lo antes posible."),
            Text("2. Evalúa la situación:"),
            Text("   - Si la persona tiene pulso y respira, mantén la calma y colócala en posición cómoda."),
            Text("   - Si tiene pulso pero no respira, realiza ventilaciones de rescate (2 ventilaciones)."),
            Text("   - Si no tiene pulso, comienza la reanimación cardiopulmonar (RCP):"),
            Text("     - Adultos: 30 compresiones en el centro del pecho, seguidas de 2 ventilaciones."),
            Text("     - Niños: 30 compresiones, seguidas de 2 ventilaciones."),
            Text("3. Si la persona tiene pulso pero está inconsciente, colócala en posición lateral de seguridad."),
            Text("4. Si hay obstrucción de las vías aéreas, realiza la maniobra de Heimlich (compresiones abdominales o golpes en la espalda para niños menores de 1 año)."),
            Text("5. Llama a los servicios de emergencia inmediatamente."),
            Text("6. Sigue monitoreando los signos vitales mientras esperas ayuda."),
          ],
        );

      case "Heridas y Cortes":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Lavar la herida con agua y jabón para evitar infecciones."),
            Text("2. Detener el sangrado aplicando presión con una tela limpia."),
            Text("3. Cubrir la herida con un apósito estéril."),
            Text("4. Si el sangrado no cesa o es grave, buscar atención médica inmediatamente."),
          ],
        );
      case "Quemaduras":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Enfriar la quemadura con agua fría durante al menos 10 minutos."),
            Text("2. No romper las ampollas ni aplicar cremas sin indicación médica."),
            Text("3. Cubrir la quemadura con un apósito estéril y no pegajoso."),
            Text("4. Consultar a un médico si la quemadura es extensa o de segundo/tercer grado."),
          ],
        );
      case "Ataques Cardíacos":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Mantener la calma y pedir ayuda urgente llamando al 132 o 123."),
            Text("2. Si la persona está consciente, darle una aspirina (si no tiene contraindicaciones)."),
            Text("3. Si la persona pierde el conocimiento, iniciar maniobras de resucitación cardiopulmonar (RCP) si es posible."),
            Text("4. No mover a la persona, esperar atención médica especializada."),
          ],
        );
      case "Asfixia":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Si la persona está tosiendo, alentarlos a que sigan tosiendo."),
            Text("2. Si la tos no elimina el objeto, realizar la maniobra de Heimlich."),
            Text("3. Si la persona pierde el conocimiento, iniciar maniobras de RCP."),
            Text("4. Llamar al 132 o 123 para recibir ayuda."),
          ],
        );
      case "Accidente de Tráfico":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Asegurar el lugar para evitar más accidentes. Usar luces de emergencia."),
            Text("2. Verificar el estado de las personas involucradas y pedir ayuda si es necesario."),
            Text("3. Llamar a la Policía (123) y esperar atención de emergencias."),
            Text("4. No mover a las personas heridas a menos que haya riesgo inminente."),
          ],
        );
      case "Electrocución":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Desconectar la fuente de electricidad (si es seguro hacerlo)."),
            Text("2. No tocar a la persona electrocutada con las manos desnudas."),
            Text("3. Si la persona está inconsciente, realizar RCP."),
            Text("4. Llamar a la Cruz Roja (132) o a la Defensa Civil (144)."),
          ],
        );
      case "Mordeduras de Serpiente":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Mantener a la persona quieta y calmada para evitar que el veneno se disperse."),
            Text("2. No intentar succionar el veneno ni hacer cortes en la mordedura."),
            Text("3. Llamar a emergencias (132) y trasladar a la persona al hospital lo más rápido posible."),
            Text("4. Identificar la serpiente si es posible, pero sin poner en riesgo la seguridad."),
          ],
        );
      case "Envenenamiento":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Llamar al centro de control de envenenamientos o al 123."),
            Text("2. No inducir el vómito a menos que lo indique un médico."),
            Text("3. Identificar la sustancia que causó el envenenamiento."),
            Text("4. Si la persona está consciente, intentar que beba agua o leche (si no está contraindicado)."),
          ],
        );
      case "Desmayo":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Acostar a la persona en un lugar seguro con las piernas elevadas."),
            Text("2. Aflojar la ropa ajustada para facilitar la respiración."),
            Text("3. Si la persona no se recupera rápidamente, llamar a emergencias."),
            Text("4. Si la persona no recobra la conciencia, realizar maniobras de RCP."),
          ],
        );
      case "Atragantamiento":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Si la persona está tosiendo, alentarlos a que sigan tosiendo."),
            Text("2. Si no puede toser, realizar la maniobra de Heimlich."),
            Text("3. Si la persona pierde el conocimiento, iniciar RCP."),
            Text("4. Llamar a emergencias (132) para recibir ayuda."),
          ],
        );
              case "Lesiones en la Cabeza":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Mantener la cabeza de la persona inmovilizada."),
            Text("2. Si la persona está consciente, mantenerla calmada."),
            Text("3. Si hay sangrado, aplicar presión con una tela limpia."),
            Text("4. No mover a la persona a menos que sea absolutamente necesario."),
            Text("5. Llamar a emergencias (132) para atención médica."),
          ],
        );
      case "Intoxicación por Monóxido de Carbono":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Sacar a la persona del área contaminada y llevarla al aire libre."),
            Text("2. Si la persona está consciente, mantenerla tranquila y descansando."),
            Text("3. Si la persona está inconsciente, iniciar maniobras de RCP."),
            Text("4. Llamar a emergencias (132) inmediatamente."),
          ],
        );
      case "Sismos":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Durante el sismo, busca refugio bajo una mesa o estructura sólida."),
            Text("2. Evita usar elevadores y mantente alejado de ventanas y objetos que puedan caerse."),
            Text("3. Después del sismo, verifica si hay daños y ayuda a las personas heridas."),
            Text("4. Llama a emergencias (132) si es necesario."),
          ],
        );
      case "Accidentes Acuáticos":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Si la persona está inconsciente, realizar maniobras de RCP."),
            Text("2. Si la persona está consciente, animarla a salir del agua lentamente."),
            Text("3. Si hay dificultad para respirar, iniciar la reanimación con respiración boca a boca."),
            Text("4. Llamar a emergencias (132) si es necesario."),
          ],
        );
      case "Alergias Graves":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Si la persona tiene una epinefrina, administrarla inmediatamente."),
            Text("2. Llamar a emergencias (132) para atención médica urgente."),
            Text("3. Mantener a la persona tranquila y vigilada."),
            Text("4. Si la persona deja de respirar, iniciar maniobras de RCP."),
          ],
        );
      case "Ataques de Epilepsia":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Mantén a la persona segura, moviendo objetos peligrosos fuera de su alcance."),
            Text("2. No intentes detener los movimientos de la persona."),
            Text("3. Coloca un cojín o algo suave debajo de su cabeza para evitar lesiones."),
            Text("4. Después de que termine el ataque, asegúrate de que la persona recupere la conciencia."),
            Text("5. Llamar a emergencias (132) si el ataque dura más de 5 minutos o si es el primero que ocurre."),
          ],
        );
      case "Golpe de Calor":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Llevar a la persona a un lugar fresco y sombreado."),
            Text("2. Hidratar a la persona con agua, evitando bebidas con cafeína o alcohol."),
            Text("3. Si la persona está consciente, darle baños fríos en la piel."),
            Text("4. Si la persona pierde el conocimiento, iniciar maniobras de RCP."),
            Text("5. Llamar a emergencias (132) si los síntomas no mejoran."),
          ],
        );
      case "Accidente de Trabajo":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Asegurarse de que el área sea segura antes de ayudar."),
            Text("2. Evaluar el estado de la persona y proporcionar primeros auxilios según sea necesario."),
            Text("3. Llamar a emergencias (132) o al servicio de salud laboral si es necesario."),
            Text("4. No mover a la persona si sospechas que tiene una fractura o lesión grave."),
          ],
        );
      case "Maltrato Infantil":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Si tienes sospechas de maltrato, denuncia a las autoridades competentes."),
            Text("2. No confrontes al agresor; busca ayuda profesional."),
            Text("3. Si el niño está herido, proporciona primeros auxilios y llámales a emergencias (132)."),
            Text("4. Mantén la seguridad del niño y acompáñalo hasta que lleguen los servicios adecuados."),
          ],
        );
      case "Emergencias Psicológicas":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Mantén la calma y escucha a la persona afectada."),
            Text("2. Evita juzgar o minimizar los sentimientos de la persona."),
            Text("3. Proporciónale un espacio seguro para que pueda expresarse."),
            Text("4. Llama a un profesional de salud mental si es necesario o a emergencias (132)."),
          ],
        );
      case "Desastres Naturales":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Durante una inundación, mueve a las personas y animales a un lugar seguro y elevado."),
            Text("2. En caso de huracanes, mantente alejado de ventanas y puertas."),
            Text("3. Sigue las instrucciones de las autoridades locales sobre evacuaciones o medidas de seguridad."),
            Text("4. Llama a emergencias (132) para obtener asistencia si es necesario."),
          ],
        );

      // Agregar más casos de emergencias aquí
      default:
        return Text("Información no disponible.");
    }
  }
}
