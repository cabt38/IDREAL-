import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:secondly/pantallas/home/principal.dart';
import 'package:secondly/pantallas/login/bienvenida.dart';
import 'package:secondly/pantallas/tarjetas/infotarjetas.dart';
import 'package:secondly/pantallas/tarjetas/detallestarjeta.dart';
import 'package:secondly/pantallas/tarjetas/vistatarjetahome.dart';

class Hometarjetas extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Hometarjetas> {
  List<InfoTarjeta> cards = [];

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
        ), /*
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }, 
            ); 
          }, 
        ), */
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding:
                EdgeInsets.fromLTRB(21, 13, 1, 10), // Ajusta los valores aquí
            alignment: Alignment.topLeft,
            child: Text(
              'Mi Tarjeta',
              style: TextStyle(
                  color: Color.fromARGB(255, 131, 48, 232),
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ],
      ),

      /* boton nueva tarjeta */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          'Agregar Nueva Tarjeta Virtual',
          style: TextStyle(color: Colors.white),
        ),
        icon: Icon(
          Icons.credit_card,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF361973),
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

  /* navegador accion botontes */
  void _navegacionbotones(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Principal()),
        );
        break;
      case 1:
        /* para el boton de qr*/
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bienvenida()),
        );

        break;
      default:
        // No hacer nada
        break;
    }
  }
}
