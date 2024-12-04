String handleInteraccionesCombinadas(String userInput) {
  // Lista de saludos
  final List<String> saludos = [
    'hola', 'buenas tardes', 'buenos dias', 'buenas noches',
    'que tal', 'buenas', 'hey', 'holi', 'holis', 'saludos',
    'hi', 'hello', 'alo', 'ey', 'oye', 'que onda', 'como estas',
    'como te va', 'que hay', 'que pasa', 'que tal todo',
    'buenos', 'saluditos', 'buenas gente', 'que hubo', 'howdy',
    'sup', 'yo', 'hola hola', 'salud', 'buen dia', 'hiliwi', 'saludos'
  ];

  // Lista de preguntas sobre el estado
  final List<String> preguntasEstado = [
    'como estas', 'como te va', 'como andas', 'como te encuentras',
    'que tal estas', 'que tal te va', 'como te sientes', 'que hay de nuevo',
    'como va todo', 'como va', 'como te encuentras hoy', 'que tal todo',
    'como te va todo', 'todo bien', 'todo bien por ahi', 'como te encuentras hoy',
    'como te ha ido', 'que onda', 'como andas por ahi'
  ];

  // Lista de respuestas corteses del usuario
  final List<String> respuestasCorteses = [
    'muy bien', 'estoy bien', 'gracias por preguntar', 'todo bien', 'genial', 'perfecto', 'bien gracias', 'perfect'
    'okay'
  ];

  // Lista de síntomas con sus recomendaciones
  final List<Map<String, String>> sintomasYRecomendaciones = [
    {'sintoma': 'dolor de cabeza', 'recomendacion': 'Te sugiero descansar, tomar agua y evitar el estrés. Si el dolor persiste, puedes tomar analgésicos como el paracetamol o ibuprofeno. Si es intenso, consulta a un médico.'},
    {'sintoma': 'fiebre', 'recomendacion': 'Es importante descansar y mantenerte hidratado. Puedes tomar paracetamol o ibuprofeno para bajar la fiebre. Si la fiebre persiste, consulta a un médico.'},
    {'sintoma': 'dolor de garganta', 'recomendacion': 'Puedes hacer gárgaras con agua tibia con sal. También bebe líquidos calientes como té con miel. Si el dolor persiste o tienes fiebre, consulta a un médico.'},
    {'sintoma': 'tos', 'recomendacion': 'Si tienes tos seca, te sugiero tomar jarabe para la tos o líquidos calientes. Si la tos persiste más de una semana, consulta a un médico.'},
    {'sintoma': 'nauseas', 'recomendacion': 'Descansa y bebe líquidos claros. Si las náuseas continúan, puedes tomar un medicamento antiemético. Si los síntomas empeoran, visita a un médico.'},
    {'sintoma': 'mareos', 'recomendacion': 'Si tienes mareos, asegúrate de estar hidratado y en un lugar seguro. Si los mareos son graves o recurrentes, consulta a un médico.'},
    {'sintoma': 'resfriado', 'recomendacion': 'Mantente hidratado y descansa. Puedes tomar un descongestionante y hacer gárgaras con agua salada. Si tienes fiebre alta, consulta a un médico.'},
  ];

  // Lista de palabras clave que indican dolor o malestar
  final List<String> palabrasDolor = [
    'me duele', 'siento dolor', 'me molesta', 'estoy adolorido', 'me arde', 'tengo dolor', 'me incomoda', 'me siento mal',
    'me hace daño', 'siento molestias', 'me está doliendo', 'me resiente', 'me hace sufrir', 'me pica', 'estoy sufriendo',
    'me duele mucho', 'me duele bastante', 'me está molestando', 'tengo molestias'
  ];

  // Convertir el input a minúsculas para hacer la comparación insensible a mayúsculas
  userInput = userInput.toLowerCase();

  // Verificar si el input contiene un saludo
  bool saludoDetectado = saludos.any((saludo) => userInput.contains(saludo));

  // Verificar si el input contiene una pregunta de estado
  bool preguntaEstadoDetectada = preguntasEstado.any((pregunta) => userInput.contains(pregunta));

  // Verificar si el input contiene una respuesta cortés
  bool respuestaCortesDetectada = respuestasCorteses.any((respuesta) => userInput.contains(respuesta));

  // Verificar si el input contiene palabras relacionadas con dolor o malestar
  bool dolorDetectado = palabrasDolor.any((palabra) => userInput.contains(palabra));

  // Si se detecta un dolor o malestar, buscar recomendación
  if (dolorDetectado) {
    for (var sintomaRecomendacion in sintomasYRecomendaciones) {
      if (userInput.contains(sintomaRecomendacion['sintoma']!)) {
        String respuesta = saludoDetectado
            ? '¡Hola! 👋 '
            : ''; // Añade un saludo solo si fue detectado
        respuesta += preguntaEstadoDetectada
            ? 'Gracias por preguntar, estoy aquí para ayudarte. '
            : ''; // Responde a "cómo estás" solo si fue detectado
        respuesta += 'Lamento que te sientas así. Si tienes ${sintomaRecomendacion['sintoma']}, te recomiendo: ${sintomaRecomendacion['recomendacion']}';
        return respuesta;
      }
    }
  }

  // Responder saludos, preguntas de estado y respuestas corteses si no hay síntomas
  if (saludoDetectado || preguntaEstadoDetectada || respuestaCortesDetectada) {
    String respuesta = saludoDetectado
        ? '¡Hola! 👋 '
        : ''; // Añade un saludo solo si fue detectado
    respuesta += preguntaEstadoDetectada
        ? 'Gracias por preguntar, estoy aquí para ayudarte. '
        : ''; // Responde a "cómo estás" solo si fue detectado
    respuesta += respuestaCortesDetectada
        ? '¡Me alegra que te encuentres bien! 😊 '
        : ''; // Responde a respuestas corteses del usuario
    respuesta += '¿En qué puedo ayudarte hoy?';
    return respuesta;
  }

  // Si no se detecta ni saludo ni síntomas, devolver mensaje vacío
  return '';
}
