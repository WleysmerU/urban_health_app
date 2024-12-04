String handleFiebre(String userInput) {
  final List<String> keywords = [
    'fiebre', 'temperatura alta', 'calentura', 'febril', 'subida de temperatura', 
    'cuerpo caliente', 'escalofríos', 'temperatura elevada'
  ];

  for (var keyword in keywords) {
    if (userInput.contains(keyword)) {
      return '''
La fiebre puede ser un síntoma de una infección u otra condición médica. Aquí hay algunas recomendaciones:
1. Mantente hidratado bebiendo agua en abundancia.
2. Usa compresas húmedas y frescas en la frente para aliviar el malestar.
3. Descansa en un lugar fresco y cómodo.

⚠️ **Importante**:
- No te automediques. Consulta a un médico antes de tomar cualquier medicamento para la fiebre.
- Busca atención médica inmediata si la fiebre supera los 39°C, dura más de 2 días, o está acompañada de otros síntomas graves como dificultad para respirar, erupciones cutáneas o confusión.

Tu salud es lo más importante. Cuida de ti. 💙
''';
    }
  }
  return ''; // Retorna un mensaje vacío si no hay coincidencia
}
