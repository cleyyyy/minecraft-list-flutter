import 'package:flutter/material.dart';
import 'square.dart';

/*
url
https://static.wikia.nocookie.net/minecraft-computer/images/b/b2/Torch.png/revision/latest?cb=20130930145829
'https://static.wikia.nocookie.net/minecraft_gamepedia/images/d/d5/Wooden_Sword_JE2_BE2.png/revision/latest/scale-to-width/360?cb=20200217235747'
child: Container(
          height: 200,
          color: Colors.deepPurple[200],
          child: Center(
              child: Text(
            texto,
            style: TextStyle(fontSize: 30),
          )),
        )); */

class HomePage extends StatelessWidget {
  final List _posts = [
    'Espada de Ferro',
    'Tocha',
    'Espada de Madeira',
    'Espada de Madeira',
    'Espada de Madeira',
    'Espada de Madeira',
    'Espada de Madeira',
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor:
                const Color.fromARGB(255, 82, 74, 74).withOpacity(0.5),
            title: Text("MinezadaWiki"),
            centerTitle: true,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://notadogame.com/uploads/game/cover/250x/5bfdc385cc56d.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: _posts.length,
            itemBuilder: (context, index) {
              return MySquare(
                texto: _posts[index],
                url:
                    'https://static.wikia.nocookie.net/minecraft-computer/images/b/b2/Torch.png/revision/latest?cb=20130930145829',
              );
            },
          ),
        ));
  }
}
