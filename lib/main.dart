import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Gabriel Montes',
            style: const TextStyle(
                fontStyle: FontStyle.italic, color: Colors.white),
          ),
          backgroundColor: const Color(0xffb70e02),
        ),
        body: ClientesCard(),
      ),
    );
  }
}

class ClientesCard extends StatelessWidget {
  // Diccionario de ejemplo con información de clientes
  final Map<String, String> clientes = {
    'nombre': 'Gabriel Montes',
    'email': 'gabmon@email.com',
    'telefono': '123-456-7890',
    'direccion': 'Calle luna',
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Bordes redondeados
        ),
        elevation: 10, // Sombra
        color: Colors.blue[100], // Color de fondo de la tarjeta
        margin: const EdgeInsets.all(15), // Márgenes alrededor de la tarjeta
        child: Padding(
          padding: const EdgeInsets.all(20), // Menor espaciado interno
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ajustar al tamaño del contenido
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nombre: ${clientes['nombre']}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4), // Menor espacio entre textos
              Text(
                'Email: ${clientes['email']}',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4), // Menor espacio entre textos
              Text(
                'Teléfono: ${clientes['telefono']}',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4), // Menor espacio entre textos
              Text(
                'Direccion: ${clientes['direccion']}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
