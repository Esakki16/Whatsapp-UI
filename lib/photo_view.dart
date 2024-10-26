import 'package:flutter/material.dart';

class PhotoView extends StatelessWidget {
  final String name;
  const PhotoView({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lakshmi Menon"),),
      body: Hero(
        tag: name,
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_XGRNnUFdJyPG0jep9tpg_PV-zYZQfQyYbA&s")),
    );
  }
}