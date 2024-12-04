String handleComoEstas(String userInput) { 
  final List<String> keywords = [
  'como estas', 'como te va', 'como andas', 'como te encuentras',
  'que tal estas', 'que tal te va', 'como te sientes', 'que hay de nuevo',
  'como va todo', 'como va', 'como te encuentras hoy', 'que tal todo',
  'como te va todo', 'todo bien', 'todo bien por ahi', 'como te encuentras hoy',
  'como te ha ido', 'que onda', 'como andas por ahi'
];


  for (var keyword in keywords) {
    if (userInput.contains(keyword)) {
      return '¡Estoy bien, gracias! 😊 ¿Y tú? ¿Cómo te encuentras?';
    }
  }
  return ''; // Mensaje vacío si no hay coincidencia
}
