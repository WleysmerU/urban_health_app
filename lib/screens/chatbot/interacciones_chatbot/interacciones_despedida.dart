String handleDespedida(String userInput) { 
  final List<String> keywords = [
    'adiós', 'hasta luego', 'nos vemos', 'hasta pronto',
    'chao', 'hasta la próxima', 'hasta luego', 'me voy',
    'cuídate', 'nos estamos viendo', 'hasta mañana', 'bye',
    'bye bye', 'hasta pronto', 'hasta otra', 'que te vaya bien',
    'nos vemos pronto', 'hasta la vista', 'take care', 'hasta luego todo',
    'fue un placer', 'chau chau', 'adéu', 'goodbye'
  ];

  for (var keyword in keywords) {
    if (userInput.contains(keyword)) {
      return '¡Hasta luego! 👋 Que tengas un excelente día. ¡Cuídate! 😊';
    }
  }
  return ''; // Mensaje vacío si no hay coincidencia
}
