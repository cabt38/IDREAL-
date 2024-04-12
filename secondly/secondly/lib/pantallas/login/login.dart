import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:secondly/pantallas/login/bienvenida.dart';
import 'package:secondly/pantallas/home/principal.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  Loginestado createState() => Loginestado();
}

class Loginestado extends State<Login> {
  double _opacity = 0.0;
  bool showSpinner = false;
  String email = '';
  String password = '';
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _opacity = 1.0; // Hacer los elementos visibles
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/imagenes/grandf.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            /* Logo */

            Positioned(
              top: MediaQuery.of(context).size.height * 0.37,
              /* Para ajustar la posicion vertical del logo */
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 900),
                opacity: _opacity,
                /* efecto */
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      'assets/imagenes/lago.png',
                      width: 100,
                      height: 130,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 45),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                            color: const Color(0xffF0EDD4),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Usuario',
                            ),
                          ),
                        ),
                      ),
                    ),

                    /* Bloque Contraseña */

                    SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                            color: const Color(0xffF0EDD4),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextField(
                            obscureText: true,
                            onChanged: (value) {
                              setState(() {
                                password = value;
                              });
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Contraseña',
                            ),
                          ),
                        ),
                      ),
                    ),

                    /* Boton de Entrar */

                    SizedBox(height: 90),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: GestureDetector(
                        onTap: () async {
                          setState(() {
                            showSpinner = true;
                          });
                          /* logearse con cuenta existente */
                          try {
                            await _auth.signInWithEmailAndPassword(
                              email: email,
                              password: password,
                            );
                            setState(() {
                              showSpinner = false;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Principal()),
                            );
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color(0xff1d1340),
                            borderRadius: BorderRadius.circular(42),
                          ),
                          child: Center(
                            child: Text(
                              'Entrar',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 120.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Bienvenida()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: const Color(0xff1d1340),
                            borderRadius: BorderRadius.circular(42),
                          ),
                          child: Center(
                            child: Text(
                              'volver',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
