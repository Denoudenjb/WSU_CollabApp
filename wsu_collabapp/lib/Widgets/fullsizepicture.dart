// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:wsu_collabapp/pictureviewer.dart';

class Fullsizepicture extends StatelessWidget {
  final CardItem item;

  const Fullsizepicture({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Image.network(
              item.urlImage,
              fit: BoxFit.cover,
            ),
          ),
        const SizedBox(height: 8),
            Text(
              item.title,
              style: TextStyle(fontSize: 32, color: Colors.black),
            ),
        ],
      ),
      );
}
