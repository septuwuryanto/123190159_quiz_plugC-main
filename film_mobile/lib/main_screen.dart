import 'package:film_mobile/home_page.dart';

import 'top_film.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Dummy"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final topFilm film = topFilmList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage(username: film.filmName);
              }));
            },
            child: Card(
              child: Row(
                children: [
                  Image.network(film.imageUrls,width: 64,),
                  // Text(film.filmName),
                  Text(film.songs[0])
                ],
              ),
            ),
          );
        },
        itemCount: topFilmList.length,),
    );
  }
}
