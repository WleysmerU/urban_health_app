import 'package:flutter/material.dart';
import 'interacciones_chatbot/interacciones_dolor.dart';
import 'interacciones_chatbot/interacciones_fiebre.dart';
import 'interacciones_chatbot/interacciones_resfriado.dart';
import 'interacciones_chatbot/interacciones_emergencia.dart';
import 'interacciones_chatbot/interacciones_pastillas.dart';
import 'interacciones_chatbot/interacciones_comoestas.dart';
import 'interacciones_chatbot/interacciones_despedida.dart';
import 'interacciones_chatbot/interacciones_quehaces.dart';
import 'interacciones_chatbot/interacciones_conbinadas.dart';


class ChatbotScreen extends StatefulWidget {
  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final List<Map<String, String>> _messages = [];
  final TextEditingController _controller = TextEditingController();
  bool _canSendMessage = false; // Controla si el botón de enviar está habilitado

  // Manejadores de intenciones
  final Map<String, Function(String)> intentHandlers = {

    'dolor': handleDolor,
    'fiebre': handleFiebre,
    'resfriado': handleResfriado,
    'emergencia': handleEmergencia,
    'pastillas': handlePastillas,
    'como estas': handleComoEstas,
    'despedida': handleDespedida,
    'que haces': handleQueHaces,
    'conbinadas': handleInteraccionesCombinadas
  };

  @override
  void initState() {
    super.initState();
    // Escuchar cambios en el controlador de texto
    _controller.addListener(() {
      setState(() {
        _canSendMessage = _controller.text.isNotEmpty; // Actualiza el estado del botón
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Liberar recursos del controlador
    super.dispose();
  }

  // Obtener respuesta basada en la intención
  String _getResponse(String userInput) {
    String userInputLower = userInput.toLowerCase();

    // Buscar la intención correspondiente
    for (var intent in intentHandlers.keys) {
      String response = intentHandlers[intent]!(userInputLower);
      if (response.isNotEmpty) {
        return response; // Retorna la respuesta correspondiente si se encuentra una intención
      }
    }

    return 'Lo siento, no tengo información sobre eso. ¿Puedes ser más específico?';
  }

  // Enviar mensaje
  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add({'text': _controller.text, 'sender': 'user'});
        String response = _getResponse(_controller.text);
        _messages.add({'text': response, 'sender': 'bot'});
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatbot de Salud'),
        backgroundColor: Color(0xFF2ECC71),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final isUserMessage = message['sender'] == 'user';
                return Align(
                  alignment: isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: isUserMessage ? Colors.blue[200] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      message['text']!,
                      style: TextStyle(color: isUserMessage ? Colors.black : Colors.black87),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'Escribe un síntoma...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _canSendMessage ? _sendMessage : null, // Deshabilitar si está vacío
                  color: _canSendMessage ? Colors.blue : Colors.grey, // Indicador visual
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
