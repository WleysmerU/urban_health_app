String handleDolor(String userInput) {
  // Convertir el input a minúsculas para comparación insensible a mayúsculas
  userInput = userInput.toLowerCase();

  // Lista de dolores específicos con sus recomendaciones
  final List<Map<String, String>> doloresYRecomendaciones = [
    {'dolor': 'dolor de cabeza', 'recomendacion': 'El dolor de cabeza puede tener varias causas, como estrés, falta de sueño o deshidratación. Descansa en un lugar tranquilo, bebe agua y, si el dolor persiste, consulta a un médico.'},
    {'dolor': 'dolor de pierna', 'recomendacion': 'Un dolor en la pierna podría deberse a un esfuerzo físico, calambres o una lesión. Descansa, aplica hielo si hay hinchazón, y eleva la pierna. Si el dolor continúa, consulta a un médico.'},
    {'dolor': 'dolor de barriga', 'recomendacion': 'El dolor de barriga podría ser causado por indigestión, gases o una infección. Evita alimentos pesados, bebe líquidos claros y descansa. Si el dolor es intenso o persiste, consulta a un médico.'},
    {'dolor': 'dolor de espalda', 'recomendacion': 'El dolor de espalda puede deberse a mala postura o esfuerzo físico. Descansa, aplica calor o frío según sea necesario, y evita levantar objetos pesados. Si el dolor persiste, consulta a un médico.'},
    {'dolor': 'dolor de cuello', 'recomendacion': 'El dolor de cuello podría ser causado por tensión muscular o una mala postura. Realiza ejercicios de estiramiento suaves y aplica calor. Si el dolor no mejora, consulta a un médico.'},
    {'dolor': 'dolor de estómago', 'recomendacion': 'Evita alimentos grasos o picantes, bebe té de menta o manzanilla, y descansa. Si tienes fiebre, vómitos o el dolor es severo, busca atención médica.'},
    {'dolor': 'dolor en las articulaciones', 'recomendacion': 'Puede deberse a artritis o un esfuerzo físico. Descansa la articulación afectada, aplica hielo o calor, y considera usar un analgésico si es necesario. Consulta a un médico si el dolor persiste.'},
    {'dolor': 'dolor en el brazo', 'recomendacion': 'El dolor en el brazo podría ser resultado de un esfuerzo o lesión. Descansa el brazo, aplica hielo y evita cargar objetos pesados. Si el dolor no desaparece, consulta a un médico.'},
    {'dolor': 'dolor en el pecho', 'recomendacion': 'Podría ser una emergencia médica. Si el dolor es intenso, se extiende al brazo izquierdo, mandíbula o espalda, o está acompañado de dificultad para respirar, busca ayuda médica inmediata.'},
    {'dolor': 'dolor de oído', 'recomendacion': 'El dolor de oído podría ser causado por una infección o acumulación de cera. Usa gotas de aceite tibio y evita introducir objetos en el oído. Consulta a un médico si el dolor persiste.'},
    {'dolor': 'dolor de muelas', 'recomendacion': 'Podría deberse a caries o inflamación. Usa un analgésico y aplica compresas frías en el área externa. Agenda una consulta con tu dentista lo antes posible.'},
    {'dolor': 'dolor de garganta', 'recomendacion': 'Bebe líquidos tibios como té con miel, haz gárgaras con agua salada y evita irritantes como el humo. Si tienes fiebre o el dolor no mejora, consulta a un médico.'},
    {'dolor': 'dolor de rodilla', 'recomendacion': 'El dolor en la rodilla puede ser resultado de un esfuerzo físico o lesión. Descansa, aplica hielo y eleva la rodilla. Consulta a un médico si el dolor persiste o hay hinchazón.'},
    {'dolor': 'dolor en el pie', 'recomendacion': 'Puede ser causado por caminar o estar de pie por largos periodos. Descansa, aplica hielo y usa un calzado cómodo. Si el dolor no mejora, consulta a un médico.'},
    {'dolor': 'dolor en el ojo', 'recomendacion': 'Evita frotarte los ojos, descansa la vista y usa lágrimas artificiales si es necesario. Si el dolor es intenso o persiste, consulta a un oftalmólogo.'},
    {'dolor': 'dolor en la cadera', 'recomendacion': 'Podría deberse a una mala postura o desgaste articular. Descansa, aplica calor y realiza ejercicios de bajo impacto. Si el dolor continúa, consulta a un médico.'},
    {'dolor': 'dolor en el tobillo', 'recomendacion': 'Podría ser una torcedura. Descansa, aplica hielo, comprime con una venda y eleva el tobillo. Si el dolor o hinchazón no mejoran, consulta a un médico.'},
    {'dolor': 'dolor muscular', 'recomendacion': 'Podría ser causado por esfuerzo físico. Descansa, realiza estiramientos suaves y aplica calor o frío según sea necesario.'},
    {'dolor': 'dolor en la mano', 'recomendacion': 'El dolor en la mano podría deberse a un esfuerzo repetitivo o una lesión. Descansa, aplica hielo y realiza ejercicios de movilidad suaves. Si persiste, consulta a un médico.'},
    {'dolor': 'dolor en los riñones', 'recomendacion': 'Podría ser un signo de infección o cálculo renal. Bebe agua en abundancia y consulta a un médico si el dolor es intenso o está acompañado de fiebre.'},
  ];

  // Variable dolor para activar la detección de dolor genérico
  final List<String> dolor = [
    'presento dolor',
    'tengo dolor',
    'me duele',
    'siento dolor',
    'me lastimé',
    'tengo molestias',
    'me molesta',
    'siento molestias',
    'estoy adolorido',
    'me está doliendo',
    'sufro de dolor',
    'estoy sufriendo',
    'me duele mucho',
    'me lastima',
    'me está matando',
    'me arde',
    'siento incomodidad',
    'me incomoda',
    'siento algo raro',
    'tengo una molestia',
    'me siento raro',
    'me siento incómodo',
    'algo me duele',
    'algo me molesta',
    'estoy incómodo',
    'me hiere',
    'me afecta',
    'siento punzadas',
    'tengo punzadas',
    'siento una presión',
    'siento un dolor',
    'me molesta algo',
    'tengo una sensación rara',
    'siento pesadez',
    'tengo una sensación extraña',
    'me siento mal',
    'algo no está bien',
    'siento dolor constante',
    'me está molestando',
    'me siento lesionado',
    'siento malestar',
    'tengo una lesión',
    'me irrita',
  ];

  // Verificamos si el input contiene palabras clave para dolor
  if (dolor.any((palabra) => userInput.contains(palabra))) {
    // Recorremos las recomendaciones buscando coincidencias de dolores específicos
    for (var dolorYRecomendacion in doloresYRecomendaciones) {
      if (userInput.contains(dolorYRecomendacion['dolor']!)) {
        return 'Lamento que sientas ${dolorYRecomendacion['dolor']}. ${dolorYRecomendacion['recomendacion']}';
      }
    }
  }

  // Si no se detecta un dolor específico, devolver una respuesta predeterminada
  return 'Parece que estás sintiendo dolor, pero necesito más detalles para poder ayudarte mejor.';
}
