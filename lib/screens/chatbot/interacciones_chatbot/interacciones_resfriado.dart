String handleResfriado(String userInput) {
  final List<String> keywords = [
    'resfriado', 'gripe', 'tos', 'catarro', 'mocos', 'congestión', 
    'estornudos', 'dolor de garganta', 'secreción nasal', 'fiebre leve', 
    'resfriado común', 'nariz tapada', 'escalofríos'
  ];

  for (var keyword in keywords) {
    if (userInput.contains(keyword)) {
      return '''
Si tienes un resfriado, aquí tienes algunos consejos:
1. **Descansa**: Tu cuerpo necesita energía para combatir el virus.
2. **Hidrátate bien**: Bebe agua, infusiones o caldos para mantenerte hidratado.
3. **Alivia los síntomas**: Usa medicamentos de venta libre como analgésicos para la fiebre y pastillas para la garganta, si es necesario.
4. **Ambiente adecuado**: Mantén un ambiente húmedo (con humidificador) y evita cambios bruscos de temperatura.
5. **Consulta a un médico**: Si los síntomas empeoran, persisten por más de una semana o incluyen fiebre alta, busca atención médica.

Espero que te sientas mejor pronto. 😊
''';
    }
  }
  return ''; // Retorna un mensaje vacío si no hay coincidencia
}
