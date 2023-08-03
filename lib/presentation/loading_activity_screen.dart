import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingActivityScreen extends StatelessWidget {
  const LoadingActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: [
      Container(
        decoration: const BoxDecoration(
            color: Color(0xffffffff),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xff52B69A), Color(0xff34A0A4)])),
      ),
      Align(
          alignment: FractionalOffset.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Padding(padding: EdgeInsets.only(top: 120.0)),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
            const Padding(padding: EdgeInsets.only(top: 160.0)),
            Text("Loading random activity...",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300)))
          ]))
    ]));
  }
}
