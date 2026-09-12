
import 'package:flutter/material.dart';
import 'package:proyecto2/presentation/home/widgets/texto_widget.dart';

class TextoScreen extends StatelessWidget {
  const TextoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme; 
    return  Scaffold(
      appBar:  AppBar(title: Text("Hola texto")),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Text("Titulo", style: textTheme.displayLarge,),
            Text("H2", style: textTheme.displayMedium,),
            Text("H3", style: textTheme.displaySmall,),
            TextoWidget(text: "Texto custom", type: TextType.h4,)
          ],
        ),
      )
      );
  }
}