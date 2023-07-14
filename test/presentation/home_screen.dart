import 'package:are_you_bored_flutter_app/presentation/utilities/hardcoded_variales_for_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'activity_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _value = -1;
  List<String> activityTypes = ActivityTypes.values.map((e) => e.name).toList();

  String dropdownValue = participantsNumber.first;

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
        child: InkWell(
            onTap: () {
              moveToNextScreen(context);
            },
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                  radius: 126.0,
                  backgroundColor: Colors.white,
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Text(
                          "Change your",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  fontSize: 40.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Text(
                          "MIND",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  fontSize: 64.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ]))),
              const Padding(padding: EdgeInsets.only(top: 61.0)),
              Text(
                "Tap to get an activity",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300)),
              ),
            ])),
      ),
      SlidingUpPanel(
          minHeight: 60,
          maxHeight: 300,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          panel:
              Stack(fit: StackFit.expand, children: [mySlidingUpPanelWidget()]))
    ]));
  }

  Widget mySlidingUpPanelWidget() {
    return Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Padding(padding: EdgeInsets.only(top: 15.0)),
          Text(
            "Swipe up to specify activity type",
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    fontSize: 15.0,
                    height: 1.2,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)),
          ),
          const Padding(
              padding: EdgeInsets.only(
                  top: 10.0, left: 100.0, right: 100.0, bottom: 10.0),
              child: Divider(
                height: 10,
                color: Colors.black,
                thickness: 1,
              )),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "How many participants:",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 20.0)),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      borderRadius: BorderRadius.circular(10.0),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: participantsNumber
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                Text(
                  'Choose type:',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                ),
                const SizedBox(height: 10.0),
                Wrap(
                  spacing: 5.0,
                  children: List<Widget>.generate(
                    9,
                    (int index) {
                      return ChoiceChip(
                        label: Text(activityTypes[index]),
                        selected: _value == index,
                        onSelected: (bool selected) {
                          setState(() {
                            _value = selected ? index : -1;
                          });
                        },
                      );
                    },
                  ).toList(),
                ),
              ],
            ),
          )
        ]));
  }

  moveToNextScreen(BuildContext context) {
    String? activityType;
    String? participants;
    if (_value != -1) {
      activityType = activityTypes[_value];
    }
    if (dropdownValue != "Any") {
      participants = dropdownValue;
    }
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ActivityScreen(
                activityType: activityType, participants: participants)));
  }
}
