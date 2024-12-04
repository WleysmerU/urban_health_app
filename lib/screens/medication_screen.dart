import 'package:flutter/material.dart';

class MedicationGuideScreen extends StatefulWidget {
  @override
  _MedicationGuideScreenState createState() => _MedicationGuideScreenState();
}

class _MedicationGuideScreenState extends State<MedicationGuideScreen> {
  List<Map<String, String>> medications = [
    {
      "name": "Paracetamol",
      "description": "Medicamento utilizado para aliviar el dolor y la fiebre.",
      "dosage": "500 mg cada 4-6 horas, no exceder los 4 gramos al día.",
      "sideEffects": "Náuseas, erupciones cutáneas, daño hepático en sobredosis.",
      "contraindications": "Hipersensibilidad al paracetamol, insuficiencia hepática grave.",
    },
    {
      "name": "Ibuprofeno",
      "description": "Anti-inflamatorio no esteroideo usado para reducir la fiebre y aliviar dolores.",
      "dosage": "200-400 mg cada 4-6 horas, no exceder los 1.200 mg al día.",
      "sideEffects": "Dolor abdominal, náuseas, úlceras gástricas.",
      "contraindications": "Úlcera gástrica, insuficiencia renal grave, hipersensibilidad al ibuprofeno.",
    },
    {
      "name": "Amoxicilina",
      "description": "Antibiótico usado para tratar infecciones bacterianas.",
      "dosage": "500 mg cada 8 horas, durante 7-10 días.",
      "sideEffects": "Diarrea, erupción cutánea, reacciones alérgicas.",
      "contraindications": "Alergia a la penicilina, insuficiencia renal grave.",
    },
    {
      "name": "Aspirina",
      "description": "Medicamento utilizado para reducir el dolor, fiebre e inflamación.",
      "dosage": "325-650 mg cada 4-6 horas, no exceder los 4 gramos al día.",
      "sideEffects": "Dolor estomacal, náuseas, sangrados.",
      "contraindications": "Úlcera gástrica, hemorragias, insuficiencia renal o hepática.",
    },
    {
      "name": "Loratadina",
      "description": "Antihistamínico utilizado para tratar alergias.",
      "dosage": "10 mg una vez al día.",
      "sideEffects": "Somnolencia, dolor de cabeza, boca seca.",
      "contraindications": "Hipersensibilidad a loratadina, insuficiencia hepática grave.",
    },
    
  {
    "name": "Metformina",
    "description": "Medicamento utilizado para controlar la diabetes tipo 2.",
    "dosage": "500-1.000 mg dos veces al día, con las comidas.",
    "sideEffects": "Náuseas, diarrea, malestar estomacal.",
    "contraindications": "Insuficiencia renal, acidosis láctica.",
  },
  {
    "name": "Omeprazol",
    "description": "Inhibidor de la bomba de protones, utilizado para tratar úlceras gástricas.",
    "dosage": "20 mg una vez al día, antes del desayuno.",
    "sideEffects": "Dolor de cabeza, náuseas, diarrea.",
    "contraindications": "Hipersensibilidad al omeprazol, insuficiencia hepática grave.",
  },
  {
    "name": "Dipirona",
    "description": "Antiinflamatorio y analgésico utilizado para el dolor y fiebre.",
    "dosage": "500-1000 mg cada 6-8 horas.",
    "sideEffects": "Reacciones alérgicas, disminución de la presión arterial.",
    "contraindications": "Hipersensibilidad a la dipirona, trastornos hematológicos.",
  },
  {
    "name": "Clorfeniramina",
    "description": "Antihistamínico utilizado para tratar la rinitis alérgica y urticaria.",
    "dosage": "4 mg cada 4-6 horas, no exceder los 24 mg al día.",
    "sideEffects": "Somnolencia, sequedad de boca, visión borrosa.",
    "contraindications": "Glaucoma de ángulo cerrado, insuficiencia hepática grave.",
  },
  {
    "name": "Codeína",
    "description": "Analgésico opioide utilizado para aliviar el dolor moderado.",
    "dosage": "15-60 mg cada 4-6 horas, no exceder los 360 mg al día.",
    "sideEffects": "Somnolencia, mareos, estreñimiento.",
    "contraindications": "Hipersensibilidad a la codeína, insuficiencia respiratoria.",
  },
  {
    "name": "Diazepam",
    "description": "Benzodiacepina utilizada para tratar la ansiedad, espasmos musculares y convulsiones.",
    "dosage": "2-10 mg, 2-4 veces al día.",
    "sideEffects": "Somnolencia, fatiga, debilidad muscular.",
    "contraindications": "Glaucoma, insuficiencia respiratoria grave, hipersensibilidad.",
  },
  {
    "name": "Furosemida",
    "description": "Diurético utilizado para reducir la retención de líquidos.",
    "dosage": "20-80 mg al día, ajustando según respuesta.",
    "sideEffects": "Desequilibrio electrolítico, mareos, hipotensión.",
    "contraindications": "Anuria, deshidratación severa, insuficiencia renal.",
  },
  {
    "name": "Enalapril",
    "description": "Inhibidor de la ECA utilizado para tratar la hipertensión y la insuficiencia cardíaca.",
    "dosage": "5-40 mg al día, en dosis divididas.",
    "sideEffects": "Mareos, tos seca, hiperkalemia.",
    "contraindications": "Hipersensibilidad al enalapril, embarazo, estenosis bilateral de arteria renal.",
  },
  {
    "name": "Prednisona",
    "description": "Corticosteroide utilizado para tratar inflamaciones y enfermedades autoinmunes.",
    "dosage": "5-60 mg al día, dependiendo de la condición.",
    "sideEffects": "Aumento de peso, hinchazón, insomnio.",
    "contraindications": "Úlcera péptica, infecciones no tratadas, hipersensibilidad.",
  },
  {
    "name": "Acetato de medroxiprogesterona",
    "description": "Progestágeno utilizado para tratar trastornos menstruales y anticoncepción.",
    "dosage": "5-10 mg diariamente, según indicaciones.",
    "sideEffects": "Dolores de cabeza, cambios en el peso, hinchazón.",
    "contraindications": "Embarazo, antecedentes de cáncer de mama, trombosis.",
  },
  {
  "name": "Acetaminofén",
  "description": "Medicamento utilizado para aliviar el dolor leve a moderado y reducir la fiebre.",
  "dosage": "500 mg cada 4-6 horas, no exceder los 4 gramos al día.",
  "sideEffects": "Náuseas, erupciones cutáneas, daño hepático en sobredosis.",
  "contraindications": "Hipersensibilidad al acetaminofén, insuficiencia hepática grave."
},
{
  "name": "Ciprofloxacino",
  "description": "Antibiótico de amplio espectro utilizado para tratar infecciones bacterianas.",
  "dosage": "250-750 mg cada 12 horas, según la infección.",
  "sideEffects": "Náuseas, diarrea, dolor abdominal.",
  "contraindications": "Hipersensibilidad a quinolonas, insuficiencia renal grave."
},
{
  "name": "Levotiroxina",
  "description": "Hormona sintética utilizada para tratar el hipotiroidismo.",
  "dosage": "25-200 mcg al día, dependiendo de la condición.",
  "sideEffects": "Palpitaciones, nerviosismo, pérdida de peso.",
  "contraindications": "Hipersensibilidad a la levotiroxina, enfermedades cardíacas no tratadas."
},
{
  "name": "Salbutamol",
  "description": "Broncodilatador utilizado para tratar el asma y la EPOC.",
  "dosage": "100-200 mcg cada 4-6 horas, según necesidad.",
  "sideEffects": "Temblor, palpitaciones, dolor de cabeza.",
  "contraindications": "Hipersensibilidad al salbutamol, taquicardia severa."
},
{
  "name": "Hydrocodona",
  "description": "Analgésico opioide utilizado para aliviar el dolor moderado a grave.",
  "dosage": "5-10 mg cada 4-6 horas, según necesidad.",
  "sideEffects": "Somnolencia, mareos, estreñimiento.",
  "contraindications": "Hipersensibilidad a la hidrocodona, insuficiencia respiratoria."
},
{
  "name": "Clopidogrel",
  "description": "Medicamento antiplaquetario utilizado para prevenir coágulos sanguíneos.",
  "dosage": "75 mg una vez al día.",
  "sideEffects": "Sangrados, dolor de cabeza, mareos.",
  "contraindications": "Hemorragias activas, úlcera gástrica, hipersensibilidad al clopidogrel."
},
{
  "name": "Ranitidina",
  "description": "Antihistamínico utilizado para reducir la producción de ácido en el estómago.",
  "dosage": "150 mg dos veces al día, antes de las comidas.",
  "sideEffects": "Dolor de cabeza, náuseas, mareos.",
  "contraindications": "Hipersensibilidad a la ranitidina, insuficiencia hepática grave."
},
{
  "name": "Lorazepam",
  "description": "Benzodiacepina utilizada para tratar la ansiedad y el insomnio.",
  "dosage": "2-4 mg al día, según la condición.",
  "sideEffects": "Somnolencia, fatiga, mareos.",
  "contraindications": "Glaucoma, insuficiencia respiratoria grave, hipersensibilidad."
},
{
  "name": "Atorvastatina",
  "description": "Estatina utilizada para reducir el colesterol y prevenir enfermedades cardiovasculares.",
  "dosage": "10-80 mg al día, dependiendo de los niveles de colesterol.",
  "sideEffects": "Dolor muscular, náuseas, dolor abdominal.",
  "contraindications": "Enfermedades hepáticas activas, embarazo, lactancia."
},
{
  "name": "Diazepam",
  "description": "Benzodiacepina utilizada para tratar la ansiedad, espasmos musculares y convulsiones.",
  "dosage": "2-10 mg, 2-4 veces al día.",
  "sideEffects": "Somnolencia, fatiga, debilidad muscular.",
  "contraindications": "Glaucoma, insuficiencia respiratoria grave, hipersensibilidad."
},
{
  "name": "Metoprolol",
  "description": "Betabloqueante utilizado para tratar la hipertensión y problemas cardíacos.",
  "dosage": "25-100 mg al día, dependiendo de la condición.",
  "sideEffects": "Fatiga, mareos, disminución de la presión arterial.",
  "contraindications": "Bradicardia severa, insuficiencia cardíaca grave, hipersensibilidad al metoprolol."
}

  ];

  List<Map<String, String>> searchResults = [];

  @override
  void initState() {
    super.initState();
    searchResults = medications;
  }

  // Función para filtrar medicamentos según la búsqueda
  void _filterSearchResults(String query) {
    final results = medications.where((medication) {
      final medicationName = medication["name"]!.toLowerCase();
      final input = query.toLowerCase();
      return medicationName.contains(input);
    }).toList();

    setState(() {
      searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guía de Medicamentos'),
        backgroundColor: Color(0xFF2ECC71),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterSearchResults,
              decoration: InputDecoration(
                labelText: "Buscar medicamento...",
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
                final medication = searchResults[index];

                return ListTile(
                  title: Text(medication["name"]!),
                  subtitle: Text(medication["description"]!),
                  onTap: () {
                    // Navegar a los detalles del medicamento
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MedicationDetailScreen(medication: medication),
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

class MedicationDetailScreen extends StatelessWidget {
  final Map<String, String> medication;

  MedicationDetailScreen({required this.medication});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(medication["name"]!),
        backgroundColor: Color(0xFF2ECC71),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Descripción:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(medication["description"]!),
              SizedBox(height: 10),
              Text(
                "Dosificación:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(medication["dosage"]!),
              SizedBox(height: 10),
              Text(
                "Efectos Secundarios:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(medication["sideEffects"]!),
              SizedBox(height: 10),
              Text(
                "Contraindicaciones:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(medication["contraindications"]!),
            ],
          ),
        ),
      ),
    );
  }
}
