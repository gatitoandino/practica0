import 'package:flutter/material.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Aplicacion',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mi Aplicación'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Inicio'),
              Tab(text: 'Usuario'),
              Tab(text: 'Comentarios'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Inicio(),
            Usuario(),
            Comentarios(),
          ],
        ),
      ),
    );
  }
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'BIENVENIDO',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Oscar Yupanqui Cuba.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Image.network('imagenes/Logotipo Horizontal.png'),
        ],
      ),
    );
  }
}

class Usuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('imagenes/Logotipo Horizontal.png'),
          SizedBox(height: 8),
          Text(
            'Oscar Yupanqui Cuba',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Av. siempre viva',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            '993 580 452',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class Comentarios extends StatefulWidget {
  @override
  _ComentariosState createState() => _ComentariosState();
}

class _ComentariosState extends State<Comentarios> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Comentarios',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Escribe tu comentario',
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón
              print('Comentario agregado: ${_controller.text}');
            },
            child: Text('Agregar Comentario'),
          ),
        ],
      ),
    );
  }
}