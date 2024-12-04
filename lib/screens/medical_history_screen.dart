import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MedicalHistoryScreen extends StatefulWidget {
  const MedicalHistoryScreen({Key? key}) : super(key: key);

  @override
  State<MedicalHistoryScreen> createState() => _MedicalHistoryScreenState();
}

class _MedicalHistoryScreenState extends State<MedicalHistoryScreen> {
  List<Map<String, String>> medicalRecords = [];

  @override
  void initState() {
    super.initState();
    _loadMedicalRecords();
  }

  // Cargar los registros médicos desde SharedPreferences
  void _loadMedicalRecords() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? records = prefs.getStringList('medicalRecords');
    
    if (records != null) {
      setState(() {
        medicalRecords = records
            .map((record) => Map<String, String>.from({
                  'type': record.split('|')[0],
                  'description': record.split('|')[1],
                  'date': record.split('|')[2],
                }))
            .toList();
      });
    }
  }

  // Función para agregar un nuevo registro a SharedPreferences
  void _addNewRecord(String type, String description, String date) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> records = prefs.getStringList('medicalRecords') ?? [];

    records.add('$type|$description|$date'); // Guardamos el registro como un string separado por "|"
    await prefs.setStringList('medicalRecords', records);

    _loadMedicalRecords(); // Recargar los registros después de agregar uno nuevo
  }

  // Función para editar un registro en SharedPreferences
  void _editRecord(int index, String type, String description, String date) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> records = prefs.getStringList('medicalRecords') ?? [];

    records[index] = '$type|$description|$date'; // Actualizamos el registro con los nuevos valores
    await prefs.setStringList('medicalRecords', records);

    _loadMedicalRecords(); // Recargar los registros después de editar uno
  }

  // Función para eliminar un registro de SharedPreferences
  void _deleteRecord(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> records = prefs.getStringList('medicalRecords') ?? [];

    records.removeAt(index); // Eliminamos el registro
    await prefs.setStringList('medicalRecords', records);

    _loadMedicalRecords(); // Recargar los registros después de eliminar uno
  }

  // Mostrar cuadro de diálogo para agregar o editar un registro médico
  void _showAddEditRecordDialog([int? index]) {
    String type = index != null ? medicalRecords[index]["type"]! : "";
    String description = index != null ? medicalRecords[index]["description"]! : "";
    String date = index != null ? medicalRecords[index]["date"]! : "";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(index == null ? "Agregar Registro Médico" : "Editar Registro Médico"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: TextEditingController(text: type),
                onChanged: (value) {
                  type = value;
                },
                decoration: const InputDecoration(labelText: 'Tipo (Consulta, Vacuna, Alergia, Medicamento)'),
              ),
              TextField(
                controller: TextEditingController(text: description),
                onChanged: (value) {
                  description = value;
                },
                decoration: const InputDecoration(labelText: 'Descripción'),
              ),
              TextField(
                controller: TextEditingController(text: date),
                onChanged: (value) {
                  date = value;
                },
                decoration: const InputDecoration(labelText: 'Fecha (DD/MM/AAAA)'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                if (type.isNotEmpty && description.isNotEmpty && date.isNotEmpty) {
                  if (index == null) {
                    _addNewRecord(type, description, date);
                  } else {
                    _editRecord(index, type, description, date);
                  }
                  Navigator.of(context).pop();
                }
              },
              child: Text(index == null ? 'Agregar' : 'Actualizar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial Médico'),
        backgroundColor: const Color(0xFF2ECC71),
      ),
      body: ListView.builder(
        itemCount: medicalRecords.length,
        itemBuilder: (context, index) {
          final record = medicalRecords[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(record["type"]!),
              subtitle: Text(record["description"]!),
              trailing: Text(record["date"]!),
              onTap: () {
                _showAddEditRecordDialog(index); // Editar el registro al hacer tap
              },
              onLongPress: () {
                _deleteRecord(index); // Eliminar el registro al hacer long press
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddEditRecordDialog(); // Agregar un nuevo registro
        },
        tooltip: 'Agregar Registro',
        child: const Icon(Icons.add),
        backgroundColor: const Color(0xFF2ECC71),
      ),
    );
  }
}
