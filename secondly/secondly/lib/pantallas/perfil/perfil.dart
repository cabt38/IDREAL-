/*
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondly/pantallas/home/principal.dart';
import 'package:secondly/pantallas/login/bienvenida.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF361973),
        flexibleSpace: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/imagenes/lago.png',
                fit: BoxFit.contain,
                height: 40,
              ),
            ],
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Column(
        // Columna para los recuadros principales
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 225, 229, 233), // Color de fondo del primer recuadro
              child: Center(
                child: Text(
                  'Recuadro 1',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green, // Color de fondo del segundo recuadro
              child: Center(
                child: 
                ),
              ),
            ),
         
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        animationCurve: Curves.easeInOut,
        backgroundColor: Color(0xFF361973),
        color: Color(0xFF361973),
        animationDuration: Duration(milliseconds: 250),
        onTap: (index) {
          _navegacionbotones(context, index);
        },
        items: [
          Icon(Icons.home_filled, size: 35, color: Colors.white),
          Icon(Icons.qr_code, size: 35, color: Colors.white),
          Icon(Icons.exit_to_app, size: 35, color: Colors.white)
        ],
      ),
    );
  }
}

void _navegacionbotones(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Principal()),
      );
      break;
    case 1:
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Bienvenida()),
      );

      break;
    default:
      /* sin accion */
      break;
  }
}

*/