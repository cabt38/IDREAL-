enum TipoTarjeta { Universidad, Bancaria, Trabajo, Transporte }

class InfoTarjeta {
  final TipoTarjeta tipoTarjeta;
  final Map<String, dynamic> datosTarjeta;

  InfoTarjeta({required this.tipoTarjeta, required this.datosTarjeta});
}



/* map es un clave valor con dynamic que permite que sea int o demas, enum
encapsula o enumra los 4 posibles tipos de tarjeta */

/* la palabra "final" indica que esta propiedad no 
cambiará despues de que se haya inicializado en el constructor */

/* Map<String, dynamic>. Esto significa que es un mapa donde las claves 
son cadenas (String) y los valores pueden ser de cualquier tipo (dynamic). Este mapa 
almacena los datos asociados con la tarjeta */