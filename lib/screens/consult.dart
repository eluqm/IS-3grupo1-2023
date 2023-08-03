import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Consult extends StatefulWidget {
  static const String id = "consult_screen";

  @override
  State<Consult> createState() => _ConsultState();
}

class Psychologist {
  final String name;
  final String specialty;
  final String imageURL;

  Psychologist({
    required this.name,
    required this.specialty,
    required this.imageURL,
  });
}

List<Psychologist> psychologistData = [
  Psychologist(
    name: "Dr. John Doe",
    specialty: "Clinical Psychologist",
    imageURL:
        "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=360",
  ),
  Psychologist(
    name: "Dr. Jane Smith",
    specialty: "Counseling Psychologist",
    imageURL:
        "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=360",
  ),
  Psychologist(
    name: "Dr. Michael Johnson",
    specialty: "Child Psychologist",
    imageURL:
        "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=360",
  ),
  Psychologist(
    name: "Dr. Michael Johnson",
    specialty: "Child Psychologist",
    imageURL:
        "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=360",
  ),
  Psychologist(
    name: "Dr. Michael Johnson",
    specialty: "Child Psychologist",
    imageURL:
        "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=360",
  ),
  Psychologist(
    name: "Dr. Michael Johnson",
    specialty: "Child Psychologist",
    imageURL:
        "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=360",
  ),
  // Agrega más psicólogos de ejemplo aquí con datos falsos.
];

class _ConsultState extends State<Consult> {
  final Query queries = FirebaseDatabase.instance.ref('doctorData');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: const Text(
              "Consult",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            "Psychologist's",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: psychologistData.length,
              itemBuilder: (context, index) {
                final psychologist = psychologistData[index];

                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(psychologist.imageURL),
                    ),
                    title: Text(psychologist.name),
                    subtitle: Text(psychologist.specialty),
                    onTap: () {
                      // Implementa aquí la lógica para manejar el toque en el psicólogo.
                      // Por ejemplo, puedes navegar a otra pantalla para mostrar más detalles del psicólogo.
                      // Navigator.push(...);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Padding reusingFormat(String data, double bottomPadding) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, bottomPadding),
      child: Text(data),
    );
  }

  Padding reusingFormatWithDesign(String data, double bottomPadding,
      TextAlign textAlign, double fontSize, FontWeight fontWeight) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, bottomPadding),
      child: Text(
        data,
        textAlign: textAlign,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
