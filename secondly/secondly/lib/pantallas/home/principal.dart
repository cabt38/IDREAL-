import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondly/pantallas/tarjetas/hometarjetas.dart';
import 'package:secondly/pantallas/login/bienvenida.dart';
import 'package:secondly/pantallas/login/login.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  static const List<String> sampleImages = [
    'https://img.freepik.com/free-photo/lovely-woman-vintage-outfit-expressing-interest-outdoor-shot-glamorous-happy-girl-sunglasses_197531-11312.jpg?w=1800&t=st=1673886721~exp=1673887321~hmac=57318aa37912a81d9c6e8f98d4e94fb97a766bf6161af66488f4d890f88a3109',
    'https://img.freepik.com/free-photo/attractive-curly-woman-purple-cashmere-sweater-fuchsia-sunglasses-poses-isolated-wall_197531-24158.jpg?w=1800&t=st=1673886680~exp=1673887280~hmac=258c92922874ad41d856e7fdba03ce349556cf619de4074143cec958b5b4cf05',
    'https://img.freepik.com/free-photo/stylish-blonde-woman-beret-beautiful-french-girl-jacket-standing-red-wall_197531-14428.jpg?w=1800&t=st=1673886821~exp=1673887421~hmac=5e77d3fab088b29a3b19a9023289fa95c1dc2af15565f290886bab4642fa2621',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF361973),
          flexibleSpace: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/imagenes/lago.png',
                  fit: BoxFit.contain,
                  height: 35,
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 238, 232, 249),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Color(0xFF361973),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  'Bienvenido a IDREAL',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontStyle: FontStyle.italic),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: 40,
                  color: Color.fromARGB(255, 88, 31, 219),
                ),
                title: Text(
                  'Usuario',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hometarjetas()),
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.help_outline_rounded,
                  size: 40,
                  color: Color.fromARGB(255, 88, 31, 219),
                ),
                title: Text(
                  'Ayuda',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hometarjetas()),
                  );
                },
              ),
              Divider(), // LINEA DIVISORA
              ListTile(
                leading: Icon(
                  Icons.exit_to_app_rounded,
                  size: 40,
                  color: Color.fromARGB(255, 88, 31, 219),
                ),
                title: Text(
                  'Cerrar Sesión',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bienvenida()),
                  );
                },
              ),
              Divider(),
            ],
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: 50,
              height: 10,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/imagenes/newgordo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            FanCarouselImageSlider(
              imagesLink: sampleImages,
              isAssets: false,
              autoPlay: true,
              sliderHeight: 330,
            ),
            /* botones */
            Positioned(
              top: MediaQuery.of(context).size.height * 0.53,
              left: 5,
              right: 5,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _Botones(
                        context,
                        'assets/imagenes/BOTON 1.png',
                        'Mi Tarjeta',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Hometarjetas()),
                        ),
                      ),
                      _Botones(
                        context,
                        'assets/imagenes/BOTON 2.png',
                        'Gestionar Tarjetas',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Hometarjetas()),
                        ),
                      ),
                      _Botones(
                        context,
                        'assets/imagenes/BOTON3.png',
                        'Mis Datos',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Hometarjetas()),
                        ),
                      ),
                      _Botones(
                        context,
                        'assets/imagenes/BOTON 4.png',
                        'Modo Offline',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Hometarjetas()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.70,
              ),
              child: _Botones(
                context,
                "assets/imagenes/QR.png",
                "Escaner QR",
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hometarjetas()),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 55,
          animationCurve: Curves.easeInOut,
          backgroundColor: Color(0xFF361973),
          color: Color(0xFF361973),
          animationDuration: Duration(milliseconds: 250),
          onTap: (index) {},
          items: [
            Icon(Icons.home_filled, size: 35, color: Colors.white),
            Icon(Icons.qr_code, size: 35, color: Colors.white),
            Icon(Icons.exit_to_app, size: 35, color: Colors.white)
          ],
        ),
      ),
    );
  }
}

Widget _Botones(
    BuildContext context, String imagePath, String text, VoidCallback onTap) {
  return Column(
    children: [
      InkWell(
        onTap: onTap,
        child: Container(
          width: 70,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      SizedBox(height: 9),
      Text(
        text,
        style: TextStyle(fontSize: 14),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
