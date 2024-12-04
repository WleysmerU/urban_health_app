import 'package:flutter/material.dart';

class EncyclopediaScreen extends StatefulWidget {
  @override
  _EncyclopediaScreenState createState() => _EncyclopediaScreenState();
}

class _EncyclopediaScreenState extends State<EncyclopediaScreen> {
  List<Map<String, String>> diseases = [
    {
      "name": "Gripe",
      "description": "Una infección viral común que afecta las vías respiratorias.",
      "symptoms": "Fiebre, tos, dolor de garganta, congestión nasal.",
      "treatment": "Reposo, líquidos, medicamentos para la fiebre.",
      "prevention": "Lavarse las manos, evitar el contacto cercano con personas enfermas."
    },
    {
      "name": "Diabetes",
      "description": "Enfermedad crónica que afecta la forma en que el cuerpo procesa el azúcar en sangre.",
      "symptoms": "Sed excesiva, fatiga, pérdida de peso.",
      "treatment": "Control de la glucosa, insulina, dieta saludable.",
      "prevention": "Ejercicio regular, mantener un peso saludable, dieta balanceada."
    },
    {
      "name": "Hipertensión",
      "description": "Presión arterial alta, una condición común que puede aumentar el riesgo de enfermedades cardíacas.",
      "symptoms": "Dolor de cabeza, mareos, dificultad para respirar.",
      "treatment": "Medicamentos antihipertensivos, dieta baja en sodio, ejercicio.",
      "prevention": "Mantener un peso saludable, reducir el consumo de sal, evitar el alcohol y el tabaco."
    },
    {
      "name": "Asma",
      "description": "Una afección pulmonar crónica que causa dificultad para respirar debido a la inflamación de las vías respiratorias.",
      "symptoms": "Dificultad para respirar, sibilancias, tos.",
      "treatment": "Broncodilatadores, corticosteroides inhalados.",
      "prevention": "Evitar desencadenantes como alérgenos, aire frío o contaminado."
    },
    {
      "name": "Cáncer de mama",
      "description": "Cáncer que se forma en las células de los senos.",
      "symptoms": "Bulto en el pecho, cambios en la piel del seno, secreción por el pezón.",
      "treatment": "Cirugía, quimioterapia, radioterapia, terapia hormonal.",
      "prevention": "Autoexamen mensual, mamografías regulares, mantener un peso saludable."
    },
    {
      "name": "EPOC (Enfermedad Pulmonar Obstructiva Crónica)",
      "description": "Enfermedad pulmonar que obstruye el flujo de aire, generalmente causada por el tabaquismo.",
      "symptoms": "Dificultad para respirar, tos crónica, esputo.",
      "treatment": "Medicamentos broncodilatadores, oxigenoterapia.",
      "prevention": "Evitar el humo de tabaco, mantener un ambiente libre de contaminantes."
    },
    {
      "name": "Insuficiencia renal",
      "description": "Cuando los riñones dejan de funcionar adecuadamente.",
      "symptoms": "Fatiga, hinchazón en las piernas, presión arterial alta.",
      "treatment": "Diálisis, trasplante de riñón.",
      "prevention": "Mantener una dieta saludable, controlar la presión arterial y la diabetes."
    },
    {
      "name": "Malaria",
      "description": "Infección causada por parásitos transmitidos por la picadura de un mosquito infectado.",
      "symptoms": "Fiebre alta, escalofríos, sudoración, dolor muscular.",
      "treatment": "Medicamentos antipalúdicos como la cloroquina.",
      "prevention": "Uso de mosquiteros, repelentes de insectos, medicamentos profilácticos."
    },
    {
      "name": "Hepatitis C",
      "description": "Infección viral que afecta al hígado.",
      "symptoms": "Fatiga, dolor abdominal, pérdida de apetito.",
      "treatment": "Antivirales, en algunos casos trasplante de hígado.",
      "prevention": "Evitar compartir agujas o utensilios de higiene personal."
    },
    {
      "name": "Tuberculosis",
      "description": "Enfermedad infecciosa que afecta principalmente a los pulmones.",
      "symptoms": "Tos persistente, sudores nocturnos, pérdida de peso.",
      "treatment": "Antibióticos durante un largo período de tiempo.",
      "prevention": "Vacunación BCG, evitar contacto cercano con personas infectadas."
    },
    {
      "name": "VIH/SIDA",
      "description": "El VIH ataca el sistema inmunológico, mientras que el SIDA es la etapa avanzada de la infección.",
      "symptoms": "Fiebre, fatiga, ganglios linfáticos inflamados.",
      "treatment": "Terapia antirretroviral (TAR) para controlar el virus.",
      "prevention": "Uso de preservativos, evitar compartir agujas."
    },
    {
      "name": "Enfermedad de Alzheimer",
      "description": "Trastorno neurodegenerativo que afecta la memoria y el pensamiento.",
      "symptoms": "Pérdida de memoria, confusión, cambios en el comportamiento.",
      "treatment": "Medicamentos para aliviar los síntomas, cuidados paliativos.",
      "prevention": "Ejercicio mental, dieta saludable, mantener actividad física."
    },
    {
      "name": "Apendicitis",
      "description": "Inflamación del apéndice, que puede causar una infección grave.",
      "symptoms": "Dolor abdominal en el lado derecho, fiebre, náuseas.",
      "treatment": "Cirugía para extirpar el apéndice (apendicectomía).",
      "prevention": "No se puede prevenir, pero una dieta alta en fibra puede reducir el riesgo."
    },
    {
      "name": "Gastritis",
      "description": "Inflamación de la mucosa del estómago.",
      "symptoms": "Dolor abdominal, náuseas, indigestión.",
      "treatment": "Medicamentos para reducir la acidez estomacal, evitar alimentos irritantes.",
      "prevention": "Evitar el estrés, el alcohol y los alimentos muy condimentados."
    },
    {
      "name": "Artritis reumatoide",
      "description": "Enfermedad autoinmune que causa inflamación en las articulaciones.",
      "symptoms": "Dolor articular, hinchazón, rigidez matutina.",
      "treatment": "Medicamentos antiinflamatorios, fisioterapia.",
      "prevention": "No se puede prevenir, pero un estilo de vida saludable ayuda a controlar los síntomas."
    },
    {
  "name": "Enfermedad Celíaca",
  "description": "Trastorno autoinmune que afecta al intestino delgado cuando se consume gluten.",
  "symptoms": "Dolor abdominal, diarrea, fatiga, pérdida de peso.",
  "treatment": "Dieta estricta sin gluten.",
  "prevention": "Evitar consumir productos que contengan gluten."
},
{
  "name": "Accidente Cerebrovascular (ACV)",
  "description": "Interrupción del flujo sanguíneo al cerebro, lo que puede causar daño cerebral.",
  "symptoms": "Debilidad en un lado del cuerpo, dificultad para hablar, dolor de cabeza severo.",
  "treatment": "Terapia de rehabilitación, medicamentos anticoagulantes.",
  "prevention": "Mantener presión arterial normal, dieta saludable, evitar el tabaquismo."
},
{
  "name": "Esquizofrenia",
  "description": "Trastorno mental grave que afecta el pensamiento, las emociones y el comportamiento.",
  "symptoms": "Alucinaciones, delirios, trastornos del pensamiento.",
  "treatment": "Medicamentos antipsicóticos, terapia psicológica.",
  "prevention": "No se puede prevenir, pero un diagnóstico temprano puede ayudar a controlar los síntomas."
},
{
  "name": "Enfermedad de Parkinson",
  "description": "Trastorno neurodegenerativo que afecta el control motor del cuerpo.",
  "symptoms": "Temblor en las manos, rigidez muscular, problemas de equilibrio.",
  "treatment": "Medicamentos dopaminérgicos, fisioterapia.",
  "prevention": "No se puede prevenir, pero mantener un estilo de vida activo puede ser beneficioso."
},
{
  "name": "Osteoporosis",
  "description": "Enfermedad que debilita los huesos, aumentando el riesgo de fracturas.",
  "symptoms": "Dolor óseo, fracturas frecuentes, disminución de la estatura.",
  "treatment": "Medicamentos para fortalecer los huesos, suplementos de calcio y vitamina D.",
  "prevention": "Ejercicio regular, dieta rica en calcio, evitar el consumo excesivo de alcohol."
},
{
  "name": "Hemorroides",
  "description": "Venas hinchadas en el área del recto y el ano.",
  "symptoms": "Dolor, picazón, sangrado al defecar.",
  "treatment": "Pomadas tópicas, baños de asiento, dieta rica en fibra.",
  "prevention": "Evitar el estreñimiento, aumentar la ingesta de agua y fibra."
},
{
  "name": "Lupus",
  "description": "Enfermedad autoinmune en la que el sistema inmunológico ataca tejidos sanos.",
  "symptoms": "Erupción en la piel, fatiga, dolor en las articulaciones.",
  "treatment": "Medicamentos inmunosupresores, antiinflamatorios.",
  "prevention": "No se puede prevenir, pero los brotes pueden ser controlados con medicación."
},
{
  "name": "Fibromialgia",
  "description": "Síndrome que causa dolor musculoesquelético generalizado, fatiga y otros síntomas.",
  "symptoms": "Dolor muscular, insomnio, dolores de cabeza, fatiga extrema.",
  "treatment": "Medicamentos para el dolor, terapia física, ejercicio regular.",
  "prevention": "No se puede prevenir, pero un estilo de vida saludable ayuda a aliviar los síntomas."
},
{
  "name": "Enfermedad Pulmonar Intersticial",
  "description": "Grupo de trastornos pulmonares que causan cicatrización y daño en los pulmones.",
  "symptoms": "Dificultad para respirar, tos persistente.",
  "treatment": "Medicamentos inmunosupresores, oxigenoterapia.",
  "prevention": "Evitar exposición a sustancias tóxicas, fumar o trabajar en ambientes con polvo."
},
{
  "name": "Síndrome de Down",
  "description": "Trastorno genético causado por la presencia de una copia extra del cromosoma 21.",
  "symptoms": "Retraso en el desarrollo, características faciales distintivas, discapacidad intelectual.",
  "treatment": "Terapias de desarrollo y apoyo educativo.",
  "prevention": "No se puede prevenir, pero las pruebas prenatales pueden detectar la condición."
},
{
  "name": "Psoriasis",
  "description": "Enfermedad autoinmune que causa un crecimiento rápido de las células de la piel.",
  "symptoms": "Parche de piel escamosa y enrojecida, picazón.",
  "treatment": "Medicamentos tópicos, fototerapia, medicamentos inmunosupresores.",
  "prevention": "No se puede prevenir, pero evitar el estrés y la irritación de la piel puede ayudar."
},
{
  "name": "Anemia",
  "description": "Condición en la que el cuerpo no tiene suficientes glóbulos rojos saludables para transportar oxígeno.",
  "symptoms": "Fatiga, palidez, dificultad para respirar.",
  "treatment": "Suplementos de hierro, dieta rica en hierro, en algunos casos transfusiones de sangre.",
  "prevention": "Mantener una dieta balanceada, rica en hierro y vitamina B12."
},
{
  "name": "Cistitis",
  "description": "Inflamación de la vejiga, generalmente causada por una infección urinaria.",
  "symptoms": "Dolor al orinar, necesidad urgente de orinar, sangre en la orina.",
  "treatment": "Antibióticos, analgésicos.",
  "prevention": "Beber suficiente agua, evitar retener la orina por largo tiempo, higiene adecuada."
},
{
  "name": "Enfermedad de Crohn",
  "description": "Enfermedad inflamatoria intestinal que causa inflamación crónica en el tracto digestivo.",
  "symptoms": "Dolor abdominal, diarrea crónica, pérdida de peso.",
  "treatment": "Medicamentos antiinflamatorios, inmunosupresores, cirugía en casos graves.",
  "prevention": "No se puede prevenir, pero una dieta adecuada puede ayudar a controlar los síntomas."
},
{
  "name": "Trastorno de Ansiedad Generalizada",
  "description": "Trastorno mental caracterizado por una preocupación excesiva e incontrolable sobre diversas áreas de la vida.",
  "symptoms": "Preocupación constante, fatiga, dificultad para concentrarse.",
  "treatment": "Terapia cognitivo-conductual, medicamentos ansiolíticos.",
  "prevention": "Manejo del estrés, ejercicio físico regular, técnicas de relajación."
},
{
  "name": "Migraña",
  "description": "Dolor de cabeza severo y recurrente, a menudo acompañado de náuseas y sensibilidad a la luz.",
  "symptoms": "Dolor pulsátil en un lado de la cabeza, náuseas, vómitos, sensibilidad a la luz y al sonido.",
  "treatment": "Analgésicos, medicamentos preventivos, cambios en el estilo de vida.",
  "prevention": "Identificar y evitar desencadenantes, mantener una rutina de sueño regular."
},
{
  "name": "Epilepsia",
  "description": "Trastorno neurológico que causa convulsiones repetidas debido a una actividad eléctrica anormal en el cerebro.",
  "symptoms": "Convulsiones, pérdida de conciencia, movimientos involuntarios.",
  "treatment": "Medicamentos anticonvulsivos, cirugía en algunos casos.",
  "prevention": "No se puede prevenir, pero la medicación y el control adecuado pueden evitar las crisis."
},
{
  "name": "Enfermedad de Huntington",
  "description": "Enfermedad neurodegenerativa hereditaria que afecta el movimiento, el comportamiento y las capacidades cognitivas.",
  "symptoms": "Movimientos involuntarios, cambios en el comportamiento, deterioro cognitivo.",
  "treatment": "Medicamentos para controlar los síntomas, terapia física.",
  "prevention": "No se puede prevenir, pero el diagnóstico temprano puede ayudar en el manejo de la enfermedad."
},
{
  "name": "Rinitis alérgica",
  "description": "Inflamación de la mucosa nasal provocada por alérgenos como polen o ácaros.",
  "symptoms": "Estornudos, secreción nasal, ojos rojos y llorosos.",
  "treatment": "Antihistamínicos, descongestionantes, spray nasal.",
  "prevention": "Evitar los alérgenos conocidos, usar mascarillas en ambientes polvorientos."
},
{
  "name": "Cáncer de pulmón",
  "description": "Cáncer que comienza en los pulmones, a menudo relacionado con el consumo de tabaco.",
  "symptoms": "Tos persistente, dificultad para respirar, dolor en el pecho, sangre en el esputo.",
  "treatment": "Cirugía, quimioterapia, radioterapia.",
  "prevention": "Evitar fumar, evitar la exposición al humo de tabaco y otros contaminantes."
},
{
  "name": "Síndrome de Rett",
  "description": "Trastorno neurológico raro que afecta principalmente a las niñas, causando una pérdida de habilidades motoras y de lenguaje.",
  "symptoms": "Pérdida de habilidades motrices, movimientos repetitivos de las manos, dificultades para caminar.",
  "treatment": "Terapia ocupacional, fisioterapia, medicamentos para los síntomas.",
  "prevention": "No se puede prevenir, ya que es un trastorno genético."
},
{
  "name": "Acné",
  "description": "Condición de la piel que ocurre cuando los folículos pilosos se obstruyen con grasa y células muertas de la piel.",
  "symptoms": "Pápulas, pústulas, quistes en la cara, espalda o pecho.",
  "treatment": "Productos tópicos con peróxido de benzoilo, antibióticos orales, retinoides.",
  "prevention": "Mantener la piel limpia, evitar tocarse la cara, evitar productos grasos."
},
{
  "name": "Hemorroidectomía",
  "description": "Procedimiento quirúrgico para eliminar hemorroides, generalmente cuando los tratamientos conservadores no han sido efectivos.",
  "symptoms": "Dolor en el área anal, sangrado durante las deposiciones.",
  "treatment": "Cirugía para extirpar las hemorroides.",
  "prevention": "Dieta rica en fibra, evitar el esfuerzo excesivo durante las evacuaciones."
},
{
  "name": "Enfermedad de Wilson",
  "description": "Trastorno genético en el que el cuerpo no puede eliminar el exceso de cobre, lo que lleva a su acumulación en el hígado y otros órganos.",
  "symptoms": "Fatiga, ictericia, temblores, dificultad para hablar.",
  "treatment": "Medicamentos para eliminar el exceso de cobre, cambios en la dieta.",
  "prevention": "No se puede prevenir, pero con tratamiento adecuado se puede controlar."
},
{
  "name": "Esclerosis múltiple",
  "description": "Enfermedad autoinmune que afecta el sistema nervioso central, dañando las fibras nerviosas y las células que las rodean.",
  "symptoms": "Fatiga, debilidad muscular, dificultad para coordinar movimientos, visión borrosa.",
  "treatment": "Medicamentos inmunosupresores, fisioterapia, tratamiento para los síntomas.",
  "prevention": "No se puede prevenir, pero el tratamiento temprano puede ayudar a reducir los brotes."
},
{
  "name": "Pánico",
  "description": "Trastorno psicológico caracterizado por ataques de miedo repentino e intenso, a menudo sin causa aparente.",
  "symptoms": "Palpitaciones, dificultad para respirar, sensación de asfixia, miedo intenso.",
  "treatment": "Terapia cognitivo-conductual, medicamentos ansiolíticos.",
  "prevention": "Manejo del estrés, técnicas de relajación y respiración profunda."
},
{
  "name": "Síndrome nefrótico",
  "description": "Trastorno renal caracterizado por la excreción excesiva de proteínas en la orina, lo que lleva a la hinchazón del cuerpo.",
  "symptoms": "Hinchazón, especialmente en los tobillos, fatiga, pérdida de apetito.",
  "treatment": "Medicamentos diuréticos, esteroides, control de la presión arterial.",
  "prevention": "Controlar enfermedades subyacentes como la diabetes o la hipertensión."
},
{
  "name": "Lupus",
  "description": "Enfermedad autoinmune que afecta diversas partes del cuerpo, incluidos los órganos y la piel.",
  "symptoms": "Erupción en la piel, dolor articular, fatiga, fiebre.",
  "treatment": "Medicamentos inmunosupresores, antiinflamatorios, cuidado de la piel.",
  "prevention": "No se puede prevenir, pero el tratamiento temprano puede controlar los síntomas."
},
{
  "name": "Gripe aviar",
  "description": "Infección viral transmitida por aves que puede afectar a los seres humanos, generalmente a través de contacto con aves infectadas.",
  "symptoms": "Fiebre, tos, dolor de garganta, dificultad para respirar.",
  "treatment": "Antivirales, cuidados médicos en hospital.",
  "prevention": "Evitar contacto con aves infectadas, cocinar bien las aves antes de consumirlas."
},
{
  "name": "Fiebre tifoidea",
  "description": "Enfermedad bacteriana que afecta los intestinos, generalmente transmitida por agua o alimentos contaminados.",
  "symptoms": "Fiebre alta, dolor abdominal, diarrea o estreñimiento.",
  "treatment": "Antibióticos, reposo, líquidos.",
  "prevention": "Higiene adecuada, consumo de agua potable y alimentos bien cocidos."
},
{
  "name": "Trastorno obsesivo-compulsivo (TOC)",
  "description": "Trastorno mental caracterizado por pensamientos repetitivos e intrusivos (obsesiones) seguidos de comportamientos compulsivos para reducir la ansiedad.",
  "symptoms": "Preocupaciones constantes, rituales repetitivos, miedo a contaminarse.",
  "treatment": "Terapia cognitivo-conductual, medicamentos ansiolíticos.",
  "prevention": "No se puede prevenir, pero el tratamiento puede mejorar los síntomas."
},
{
  "name": "Hidropesía",
  "description": "Condición caracterizada por la acumulación excesiva de líquidos en los tejidos del cuerpo.",
  "symptoms": "Hinchazón en las piernas, abdomen distendido, dificultad para respirar.",
  "treatment": "Diuréticos, tratamiento de la enfermedad subyacente.",
  "prevention": "Controlar enfermedades como insuficiencia cardíaca, renal o hepática."
},
{
  "name": "Hemofilia",
  "description": "Trastorno hereditario que impide la correcta coagulación de la sangre.",
  "symptoms": "Sangrados excesivos, moretones fáciles, sangrado espontáneo.",
  "treatment": "Tratamientos con factores de coagulación, terapias genéticas en investigación.",
  "prevention": "No se puede prevenir, es una condición genética."
},
{
  "name": "Sindrome de Marfan",
  "description": "Trastorno genético que afecta el tejido conectivo y puede impactar en los ojos, huesos, vasos sanguíneos y el corazón.",
  "symptoms": "Altura excesiva, dedos largos, problemas en los ojos, afecciones cardiovasculares.",
  "treatment": "Medicamentos para controlar la presión arterial, cirugía para corregir problemas cardíacos.",
  "prevention": "No se puede prevenir, pero el tratamiento temprano puede reducir complicaciones."
},
{
  "name": "Miastenia gravis",
  "description": "Trastorno neuromuscular que causa debilidad en los músculos voluntarios del cuerpo.",
  "symptoms": "Debilidad muscular, visión doble, dificultad para respirar.",
  "treatment": "Medicamentos anticolinesterásicos, inmunosupresores, en algunos casos cirugía.",
  "prevention": "No se puede prevenir, pero el tratamiento puede mejorar la calidad de vida."
},
{
  "name": "Osteoporosis",
  "description": "Condición en la que los huesos se debilitan y son más propensos a fracturas.",
  "symptoms": "Dolor en los huesos, fracturas frecuentes, pérdida de altura.",
  "treatment": "Suplementos de calcio y vitamina D, medicamentos para fortalecer los huesos.",
  "prevention": "Ejercicio físico regular, dieta rica en calcio y vitamina D, evitar el tabaco."
},
{
  "name": "Hepatitis A",
  "description": "Infección hepática causada por un virus, generalmente transmitido por alimentos o agua contaminados.",
  "symptoms": "Fiebre, náuseas, dolor abdominal, ictericia.",
  "treatment": "Reposo, hidratación, en algunos casos antivirales.",
  "prevention": "Vacunación, buenas prácticas de higiene, consumir alimentos y agua potable."
},
{
  "name": "Fiebre amarilla",
  "description": "Enfermedad viral transmitida por mosquitos, que afecta al hígado y puede causar hemorragias.",
  "symptoms": "Fiebre alta, ictericia, dolor muscular, sangrado.",
  "treatment": "No existe tratamiento antiviral específico, cuidados médicos en hospital.",
  "prevention": "Vacunación, evitar la exposición a mosquitos en áreas endémicas."
}

  ];

  List<Map<String, String>> searchResults = [];

  @override
  void initState() {
    super.initState();
    searchResults = diseases;
  }

  // Función para filtrar enfermedades según la búsqueda
  void _filterSearchResults(String query) {
    final results = diseases.where((disease) {
      final diseaseName = disease["name"]!.toLowerCase();
      final input = query.toLowerCase();
      return diseaseName.contains(input);
    }).toList();

    setState(() {
      searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enciclopedia Médica'),
        backgroundColor: Color(0xFF2ECC71),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterSearchResults,
              decoration: InputDecoration(
                labelText: "Buscar enfermedad...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                final disease = searchResults[index];

                return ListTile(
                  title: Text(disease["name"]!),
                  subtitle: Text(disease["description"]!),
                  onTap: () {
                    // Navegar a los detalles de la enfermedad
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DiseaseDetailScreen(disease: disease),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DiseaseDetailScreen extends StatelessWidget {
  final Map<String, String> disease;

  const DiseaseDetailScreen({Key? key, required this.disease}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(disease["name"]!),
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
            Text(disease["description"]!),
            SizedBox(height: 16),
            Text(
              "Síntomas:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(disease["symptoms"]!),
            SizedBox(height: 16),
            Text(
              "Tratamiento:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(disease["treatment"]!),
            SizedBox(height: 16),
            Text(
              "Prevención:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(disease["prevention"]!),
          ],
        ),
      ),
    );
  }
}
