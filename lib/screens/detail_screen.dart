import 'package:flutter/material.dart';
import 'package:shop/models/dress.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final dress = ModalRoute.of(context)!.settings.arguments as Dress;

    return Scaffold(
      appBar: AppBar(
        title: Text(dress.title),
      ),
      body: Column(
        children: [
          Hero(
            tag: dress.title,
            child: Image.network(
              dress.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(dress.description),
          ),
        ],
      ),
    );
  }
}
