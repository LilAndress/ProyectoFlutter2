import 'package:flutter/material.dart';
import 'package:proyecto2/presentation/botones/screens/botones_screens.dart';
import 'package:proyecto2/presentation/texto/screens/texto_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My App"), backgroundColor: Colors.amber),
      body: ListView(
        children: [
          ListTile(
            title: Text("Botones"),
            subtitle: Text("Ejemplos de botones para interactuar con la aplicación."),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BotonesScreens(),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Texto"),
            subtitle: Text("Ejemplos de textos y estilos para mostrar información."),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TextoScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}