import 'package:flutter/material.dart';
import 'package:shop/data/dressData.dart';
import 'package:shop/models/dress.dart';
import 'package:shop/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    List<Dress> dresses = generateDresses();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView.builder(
        itemCount: dresses.length,
        itemBuilder: (context, id) {
          Dress dress = dresses[id];
          return ListTile(
            leading: Hero(
              tag: dress.title,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Image.network(
                  dress.imageUrl,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(dress.title),
            subtitle: Text(
              dress.description,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_ios_outlined),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: dress,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
