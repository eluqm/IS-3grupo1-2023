import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final _password = TextEditingController();

  final _email = TextEditingController();

  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Lottie.asset(
                    'assets/login.json',
                    //'https://assets9.lottiefiles.com/packages/lf20_hy4txm7l.json',
                    height: MediaQuery.of(context).size.height * 0.4),
                const Text(
<<<<<<< HEAD
                  "Welcome Back",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Login to continue your journey",
=======
                  "¡Bienvenido de vuelta!",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Inicia sesión para continuar tu viaje",
>>>>>>> ce69f1cfce129048fa28fd62a909aae6e243140c
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
<<<<<<< HEAD
                            labelText: 'EMAIL',
=======
                            labelText: 'CORREO ELECTRÓNICO',
>>>>>>> ce69f1cfce129048fa28fd62a909aae6e243140c
                          ),
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
<<<<<<< HEAD
                              return 'Did you forget me??';
=======
                              return '¿Me olvidaste?';
>>>>>>> ce69f1cfce129048fa28fd62a909aae6e243140c
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: TextFormField(
                          obscureText: visible,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
<<<<<<< HEAD
                            labelText: 'Password',
=======
                            labelText: 'Contraseña',
>>>>>>> ce69f1cfce129048fa28fd62a909aae6e243140c
                              suffix: IconButton(onPressed: (){
                                setState(() {
                                  if(visible){
                                    visible = false;
                                  }else{
                                    visible = true;
                                  }
                                });
                              }, icon: Icon(visible == true?Icons.remove_red_eye:Icons.password))
                          ),
                          controller: _password,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
<<<<<<< HEAD
                              return 'Did you forget me??';
=======
                              return '¿Me olvidaste?';
>>>>>>> ce69f1cfce129048fa28fd62a909aae6e243140c
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                            backgroundColor:
                            Theme.of(context).colorScheme.primary,
                            elevation: 15,
                            shape: const StadiumBorder(), //Colors.tealAccent,
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              await login(_email.text, _password.text);
                            }
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
<<<<<<< HEAD
                          child: const Text("LOG IN"),
=======
                          child: const Text("INICIAR SESIÓN"),
>>>>>>> ce69f1cfce129048fa28fd62a909aae6e243140c
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  login(String emailAddress, String password) async {
    ScaffoldMessenger.of(context).showSnackBar(
<<<<<<< HEAD
      const SnackBar(content: Text('Gimme a min')),
=======
      const SnackBar(content: Text('Espera un momento')),
>>>>>>> ce69f1cfce129048fa28fd62a909aae6e243140c
    );
    //print(emailAddress + password);
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      Navigator.pushNamed(context, '/outline');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
<<<<<<< HEAD
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
=======
        print('No existe un usuario con ese correo');
      } else if (e.code == 'wrong-password') {
        print('Contraseña incorrecta');
>>>>>>> ce69f1cfce129048fa28fd62a909aae6e243140c
      }
    }
  }
}
