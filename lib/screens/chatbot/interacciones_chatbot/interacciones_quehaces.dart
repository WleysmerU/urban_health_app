String handleQueHaces(String userInput) { 
  final List<String> keywords = [
    'que haces', 'que estás haciendo', 'que andas haciendo', 
    'que haces por aqui', 'que haces ahora', 'en que andas',
    'que haces de bueno', 'que andas haciendo por aca', 
    'que estas haciendo', 'q hcs', 'que ases'
  ];

  for (var keyword in keywords) {
    if (userInput.contains(keyword)) {
      return '¡Intento ayudarte! 😊 ¿En qué te puedo colaborar?';
    }
  }
  return ''; // Mensaje vacío si no hay coincidencia
}
