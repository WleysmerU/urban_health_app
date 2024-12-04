String handlePastillas(String userInput) {
  final List<String> keywords = [
    'pastillas', 'medicamento', 'medicina', 'tabletas', 
    'cápsulas', 'dosis', 'tratamiento', 'medicación', 'píldoras', 
    'remedios', 'medicinas'
  ];

  for (var keyword in keywords) {
    if (userInput.contains(keyword)) {
      return '''
Es importante tomar los medicamentos de manera responsable:
1. **Sigue las indicaciones médicas**: Toma las pastillas en las dosis y horarios prescritos.
2. **Lee la etiqueta**: Verifica las instrucciones en el empaque o prospecto del medicamento.
3. **Consulta dudas**: Si tienes preguntas sobre el uso o efectos secundarios, habla con tu médico o farmacéutico.
4. **No te automediques**: Tomar medicamentos sin recomendación médica puede ser peligroso.

Tu salud es lo más importante. 😊
''';
    }
  }
  return ''; // Retorna un mensaje vacío si no hay coincidencia
}
