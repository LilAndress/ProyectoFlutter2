import 'package:flutter/material.dart';

class BotonesScreens extends StatelessWidget {
  const BotonesScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hola Botones")),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Wrap(
          runSpacing: 16.0,
          spacing: 8.0,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Elevated button")),
            ElevatedButton(
              onPressed: null,
              child: Text("Elevated button disable"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text("Elevated Icon"),
              icon: Icon(Icons.add),
            ),
            FilledButton(onPressed: () {}, child: Text("Filled button")),
            FilledButton(
              onPressed: null,
              child: Text("Filled button disabled"),
            ),
            FilledButton.icon(
              onPressed: () {},
              label: Text("Filled"),
              icon: Icon(Icons.add),
            ),
            OutlinedButton(onPressed: () {}, child: Text("OUT LINE")),
            OutlinedButton(onPressed: null, child: Text("OUT LINE DISABLE")),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text("OUT ICON"),
              icon: Icon(Icons.add),
            ),
            TextButton(onPressed: () {}, child: Text("Text")),
            TextButton(onPressed: null, child: Text("Text Disable")),
            TextButton.icon(
              onPressed: () {},
              label: Text("Text"),
              icon: Icon(Icons.add),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.add),
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amber),
            iconColor: WidgetStatePropertyAll(Colors.blue)),),
          ],
        ),
      ),
    );
  }
}