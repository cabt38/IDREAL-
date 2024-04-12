import 'package:flutter/material.dart';
import 'package:secondly/pantallas/tarjetas/infotarjetas.dart';

class DetallesTarjetaScreen extends StatelessWidget {
  final InfoTarjeta cardInfo;

  const DetallesTarjetaScreen({required this.cardInfo});

  @override
  Widget build(BuildContext context) {
    String tipoTarjeta = '';
    switch (cardInfo.tipoTarjeta) {
      case TipoTarjeta.Universidad:
        tipoTarjeta = 'Universidad';
        break;
      case TipoTarjeta.Bancaria:
        tipoTarjeta = 'Bancaria';
        break;
      case TipoTarjeta.Trabajo:
        tipoTarjeta = 'Trabajo';
        break;
      case TipoTarjeta.Transporte:
        tipoTarjeta = 'Transporte';
        break;
    }

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
          builder: (BuildContext contexto) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$tipoTarjeta',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: 10),
            ...cardInfo.datosTarjeta.entries.map((entry) {
              if (cardInfo.tipoTarjeta == TipoTarjeta.Universidad) {
                if (entry.key == 'Nombres' ||
                    entry.key == 'Nombre Universidad' ||
                    entry.key == 'Carrera' ||
                    entry.key == 'ID Carnet') {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      '${entry.key}: ${entry.value}',
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                }
              } else if (cardInfo.tipoTarjeta == TipoTarjeta.Bancaria) {
                if (entry.key == 'Nombres' ||
                    entry.key == 'Número de Tarjeta' ||
                    entry.key == 'Fecha de Expiración' ||
                    entry.key == 'CVV') {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      '${entry.key}: ${entry.value}',
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                }
              } else if (cardInfo.tipoTarjeta == TipoTarjeta.Trabajo) {
                if (entry.key == 'Empresa' ||
                    entry.key == 'Nombres' ||
                    entry.key == 'Número de Identificación' ||
                    entry.key == 'Ocupación') {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      '${entry.key}: ${entry.value}',
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                }
              } else if (cardInfo.tipoTarjeta == TipoTarjeta.Transporte) {
                if (entry.key == 'Nombre' ||
                    entry.key == 'Número' ||
                    entry.key == 'Civica Estudiantil') {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      '${entry.key}: ${entry.value}',
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                }
              }
              return SizedBox.shrink();
            }).toList(),
          ],
        ),
      ),
    );
  }
}
