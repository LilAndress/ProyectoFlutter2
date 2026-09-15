import 'package:flutter/material.dart';
import 'package:proyecto2/config/router/router_app.dart';
import 'package:proyecto2/presentation/botones/screens/botones_screens.dart';
import 'package:proyecto2/presentation/texto/screens/texto_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcom"), backgroundColor: Colors.amber),
      body: ListView.builder(
        itemCount: router.length,
        itemBuilder: (context, i){
          final elemento = router[i];
          return ListTile(
            title: Text(elemento.title),
            subtitle: Text(elemento.description),
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (contex) => elemento.widget));
            },



          );

        }
      )
    );
  }
}