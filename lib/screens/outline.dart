import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helping_hand/screens/profile.dart';
import 'package:helping_hand/screens/progress.dart';
import 'package:helping_hand/screens/viewJournal.dart';

class Outline extends StatefulWidget {
  const Outline({Key? key}) : super(key: key);

  @override
  State<Outline> createState() => _OutlineState();
}

class _OutlineState extends State<Outline> {
  // si se seleccionan páginas de música o revistas, entonces
  // la navegación inferior muestra la página de inicio seleccionada
  int check(int screenIndex) => screenIndex > 4 ? 0 : screenIndex;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //close app on back press
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        key: _globalKey,

        //menu y pagina de music
        body: Stack(
          children: [
            //current screen
            allScreens[currentScreen],

            //icono de caja
            Container(
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    _globalKey.currentState?.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                  //color: Colors.black,
                ),
              ),
            ),

            //icono de musica
            Container(
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.headphones),
                  //color: Colors.black,
                  onPressed: () {
                    setState(() {
                      currentScreen = 7;
                    });
                  },
                ),
              ),
            )
          ],
        ),

        // cajon de navegación
        drawer: ClipRRect(
          //esquinas curvas
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),

          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const UserAccountsDrawerHeader(
                    currentAccountPicture: Image(
                      image: AssetImage('assets/helpinghandlogo.png'),
                      color: Colors.white,
                    ),
                    accountName: Text(
                      "Change your mind",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    accountEmail: Text(
                      "TEAM 01 - SOFTWARE III",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
                const ListTile(
                  title: Text("Menu"),
                ),
                _drawerTile(const Icon(Icons.home), 'Home', 0),
                const Divider(),
                const ListTile(
                  title: Text('Profile'),
                ),
                _drawerTile(const Icon(Icons.person), 'Profile', 4),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ],
            ),
          ),
        ),

        // //Floating action button for baymax
        // floatingActionButton: FloatingActionButton(
        //   child: const Icon(Icons.smart_toy_outlined),
        //   onPressed: () {
        //     Navigator.pushNamed(context, '/baymax');
        //   },
        // ),

        //boton de navegación
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              //indicatorColor: Colors.tealAccent.shade100,
              labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )),
          child: NavigationBar(
            height: 65,
            selectedIndex: check(currentScreen),
            animationDuration: const Duration(seconds: 3),
            onDestinationSelected: (index) =>
                setState(() => currentScreen = index),
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home_filled),
                  label: "Home"),
              NavigationDestination(
                  icon: Icon(Icons.timeline_outlined),
                  selectedIcon: Icon(Icons.timeline),
                  label: "Activity"),
              NavigationDestination(
                  icon: Icon(Icons.content_paste_outlined),
                  selectedIcon: Icon(Icons.content_paste_go),
                  label: "Progress"),
              NavigationDestination(
                  icon: Icon(Icons.group_outlined),
                  selectedIcon: Icon(Icons.group),
                  label: "Consult"),
              NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
                  label: "Profile")
            ],
          ),
        ),
      ),
    );
  }
}
