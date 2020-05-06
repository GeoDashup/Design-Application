import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _imagen(),
          _info(),
          _actions(),
          _text(),
          _text(),
          _text(),
          _text(),
        ],
      ),
    ));
  }

  Widget _imagen() {
    return Container(
      width: double.infinity,
      child: Image(
      image: NetworkImage(
        "https://2380ie25r0n01w5tt7mvyi81-wpengine.netdna-ssl.com/wp-content/uploads/2017/03/Magia_blanca_del_Monte_Fuji_joya_life.jpg"),
        height: 200,
        fit: BoxFit.cover,
        ),
    );
  }

  Widget _info() {
    final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);

    final estiloSubtitulo = TextStyle(fontSize: 17.5, color: Colors.grey);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Monte Fuji", style: estiloTitulo),
                SizedBox(height: 2.0),
                Text("Famoso monte ubicado en Japón", style: estiloSubtitulo)
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
    );
  }

  Widget _actions() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _icons(Icons.call, "CALL"),
          _icons(Icons.send, "ROUTE"),
          _icons(Icons.share, "SHARE"),
        ],
      ),
    );
  }

  Widget _icons(IconData icon, String text) {
    final estilo = TextStyle(fontSize: 17.5, color: Colors.black);

    return Column(
      children: <Widget>[
        Icon(icon),
        SizedBox(height: 5.0),
        Text(text, style: estilo)
      ],
    );
  }

  Widget _text() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
          "El monte Fuji (富士山 Fuji-san), con 3776 metros de altitud,​ es el pico más alto de la isla de Honshu y de todo Japón. Se encuentra entre las prefecturas de Shizuoka y Yamanashi en el Japón central y justo al oeste de Tokio, desde donde se puede observar en un día despejado.El Fuji es un volcán compuesto y es el símbolo de Japón. \nConsiderado sagrado desde la Antigüedad, les estaba prohibido a las mujeres llegar a la cima hasta la era Meiji (finales del s. XIX). Actualmente es un conocido destino turístico, así como un destino popular para practicar el alpinismo. La temporada «oficial» para practicar el alpinismo dura desde principios de julio hasta finales de agosto. Son mayoría los que escalan por la noche para apreciar la salida del sol.",
          style: TextStyle(wordSpacing: 2),
          textAlign: TextAlign.justify),
    );
  }
}
