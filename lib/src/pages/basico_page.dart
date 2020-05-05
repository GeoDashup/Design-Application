import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Column(
        children: <Widget>[
          _primeraHilera(),
          _segundaHilera()
        ],
      )
    );
  }

  Widget _primeraHilera(){

    final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);

    final estiloSubtitulo = TextStyle(fontSize: 17.5, color: Colors.grey);

    return Column(
        children: <Widget>[
          Image(
              image: NetworkImage(
                  "https://2380ie25r0n01w5tt7mvyi81-wpengine.netdna-ssl.com/wp-content/uploads/2017/03/Magia_blanca_del_Monte_Fuji_joya_life.jpg")),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Monte Fuji", style: estiloTitulo),
                      SizedBox(height: 2.0),
                      Text("Famoso monte ubicado en Japón",
                          style: estiloSubtitulo)
                    ],
                  ),
                ),
                Icon(Icons.star, color: Colors.deepOrangeAccent),
                Text(
                  "4.6/5",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )
              ],
            ),
          )
        ],
      );
  }

  Widget _segundaHilera() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.phone, color: Colors.black),
              Text("CALL", style: TextStyle(fontSize: 17.5, color: Colors.black)),
              Icon(Icons.send, color: Colors.black),
              Text("ROUTE", style: TextStyle(fontSize: 17.5, color: Colors.black)),
              Icon(Icons.share, color: Colors.black),
              Text("SHARE", style: TextStyle(fontSize: 17.5, color: Colors.black))
            ],)
        ],
      )
    );
  }
}
