String handleEmergencia(String userInput) {
  final List<String> keywords = [
    'emergencia', 'urgencia', 'ayuda inmediata', 'auxilio', 'necesito ayuda', 
    'es una emergencia', 'socorro', 'es urgente'
  ];

  for (var keyword in keywords) {
    if (userInput.contains(keyword)) {
      return '''
🚨 Si estás en una emergencia médica:
1. Llama al 123 (o al número de emergencias de tu localidad).
2. Busca ayuda de alguien cercano si no puedes moverte.
3. Acude al hospital más cercano lo antes posible.

Recuerda, tu seguridad es lo más importante. 💙
''';
    }
  }
  return ''; // Retorna un mensaje vacío si no hay coincidencia
}
