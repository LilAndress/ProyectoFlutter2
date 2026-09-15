 
 import 'package:flutter/material.dart';

class CardCustomScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final themColor = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar (title: Text("Hola Card")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
            elevation: 3.0,
            color:  themColor.tertiary,
            child: Padding(
            padding: EdgeInsets.all(32),
            child: Text("Hola Card"),),
            ),
            Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32)),
              side: BorderSide(color: Colors.blue)
            ),
            child: Padding(
            padding: EdgeInsets.all(32),
            child: Text("Hola Card"),),

            )
          ],
        ),
      ),
    );
  }
}