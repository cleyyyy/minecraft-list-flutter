import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String texto;
  final String url;

  MySquare({required this.texto, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          margin: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black, width: 5.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 105, 105, 105).withOpacity(0.5)),
          child: GestureDetector(
            onTap: () {
              print("Container clicked");
            },
            child: Column(
              children: [
                Container(
                    height: 150,
                    color: const Color.fromARGB(255, 105, 105, 105)
                        .withOpacity(0.0),
                    child: Image.network(url)),
                Text(texto,
                    style: TextStyle(fontSize: 30, fontFamily: 'RobotoMono'))
              ],
            ),
          ),
        ));
  }
}
