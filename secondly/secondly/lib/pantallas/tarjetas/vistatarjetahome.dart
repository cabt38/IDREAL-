import 'package:flutter/material.dart';
import 'package:secondly/pantallas/tarjetas/infotarjetas.dart';

/* tarjetas agregadas al home tarjetas */
class CardItem extends StatelessWidget {
  final InfoTarjeta cardInfo;

  const CardItem({required this.cardInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(21, 20, 21, 22),
            child: Image.asset(
              obtenerimagenes(cardInfo.tipoTarjeta),
              width: 90,
              height: 90,
            ),
          ),
          Expanded(
            child: Card(
              elevation: 0,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${cardInfo.tipoTarjeta.toString().split('.').last}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '${cardInfo.datosTarjeta['Nombres']}',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String obtenerimagenes(TipoTarjeta cardType) {
    switch (cardType) {
      case TipoTarjeta.Universidad:
        return 'assets/imagenes/trabajo.png';
      case TipoTarjeta.Bancaria:
        return 'assets/imagenes/credito.png';
      case TipoTarjeta.Trabajo:
        return 'assets/imagenes/trabajo.png';
      case TipoTarjeta.Transporte:
        return 'assets/imagenes/civica.png';
    }
  }
}
