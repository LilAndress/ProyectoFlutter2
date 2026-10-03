
import 'package:flutter/material.dart';
const List<Widget> elementos =[

                CustomImage(
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh9aFBYUROeMYeemAN3lTgJVXeEpGHYFNft4eGSU2798nEAjBsd19DUjg&s=10',
                ),
                CustomImage(
                  url:
                      'https://img.buzzfeed.com/buzzfeed-static/static/2025-03/13/18/subbuzz/UjLcjUoUE0.jpg?downsize=700%3A%2A&output-quality=auto&output-format=auto',
                ),
                CustomImage(
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSaoR8pZKCbeDt4xwkNdFmwe2ON2jI3CwZf2M8ALZTfTiJ-1BMMHYS2Q0&s=10',
                ),
                CustomImage(
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEyt91es5hvP0aP1lWK66jXXqLsDL3tz9-kk4RX9_XmWXP9bEtV__WNU4Q&s=10',
                ),
];

class PageScreen extends StatefulWidget {
  const PageScreen({super.key});

  @override
  State<PageScreen> createState() => _PageScreenState();
}


class _PageScreenState extends State<PageScreen> {
  int indicador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  indicador = value; // Aquí puedes actualizar el estado si es necesario
                });
                // Aquí puedes manejar el cambio de página si es necesario
              },
              scrollDirection: Axis.vertical,
              itemCount: elementos.length,
              itemBuilder: (context, index) {
                return elementos[index];
              },
              children: [
                CustomImage(
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh9aFBYUROeMYeemAN3lTgJVXeEpGHYFNft4eGSU2798nEAjBsd19DUjg&s=10',
                ),
                CustomImage(
                  url:
                      'https://img.buzzfeed.com/buzzfeed-static/static/2025-03/13/18/subbuzz/UjLcjUoUE0.jpg?downsize=700%3A%2A&output-quality=auto&output-format=auto',
                ),
                CustomImage(
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSaoR8pZKCbeDt4xwkNdFmwe2ON2jI3CwZf2M8ALZTfTiJ-1BMMHYS2Q0&s=10',
                ),
                CustomImage(
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEyt91es5hvP0aP1lWK66jXXqLsDL3tz9-kk4RX9_XmWXP9bEtV__WNU4Q&s=10',
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: indicador == index ? 12 : 8,
                height: indicador == index ? 12 : 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: indicador == index ? Colors.black : Colors.grey,
                ),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: const Column(
              children: [
                Text("Titulo"),
                Text("Descripcion"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomImage extends StatelessWidget {
  final String url;

  const CustomImage({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }
}