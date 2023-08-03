import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  static const String id = "tips_screen";
  final List<Map<String, dynamic>> mentalHealthTips = [
    {
      "tip": "Practica la meditación y la atención plena.",
      "icon": Icons.self_improvement,
    },
    {
      "tip": "Realiza ejercicio físico regularmente.",
      "icon": Icons.directions_run,
    },
    {
      "tip": "Mantén una dieta equilibrada y saludable.",
      "icon": Icons.local_dining,
    },
    {
      "tip": "Establece límites y aprende a decir 'no'.",
      "icon": Icons.accessibility_new,
    },
    {
      "tip": "Habla con amigos y seres queridos sobre tus sentimientos.",
      "icon": Icons.people,
    },
    {
      "tip": "Busca ayuda profesional si es necesario.",
      "icon": Icons.medical_services,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consejos para mejorar la salud mental"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: mentalHealthTips.length,
        itemBuilder: (context, index) {
          final tip = mentalHealthTips[index];
          return Card(
            child: InkWell(
              onTap: () {
                // Implementa aquí la lógica para manejar el toque en el consejo.
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(tip['icon'], size: 48),
                  SizedBox(height: 8),
                  Text(
                    tip['tip'],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
