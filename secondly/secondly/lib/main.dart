import 'package:flutter/material.dart';
import 'package:secondly/pantallas/login/bienvenida.dart';
import 'package:secondly/pantallas/login/registro.dart';
import 'package:secondly/pantallas/tarjetas/hometarjetas.dart';
import 'package:secondly/pantallas/home/principal.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:secondly/pantallas/login/bienvenida.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAbQpHvIgK9jWOrSS-Eqpmy4UHbe4ecYZs",
      authDomain: "TU_AUTH_DOMAIN",
      projectId: "TU_PROJECT_ID",
      storageBucket: "TU_STORAGE_BUCKET",
      messagingSenderId: "TU_MESSAGING_SENDER_ID",
      appId: "TU_APP_ID",
      measurementId: "TU_MEASUREMENT_ID",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hometarjetas(),
      debugShowCheckedModeBanner: false,
    );
  }
}
