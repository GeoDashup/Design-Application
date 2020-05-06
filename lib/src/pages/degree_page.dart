import 'package:flutter/material.dart';

class DegreePage extends StatelessWidget {
  const DegreePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(context),
        ],
      )
    );
  }

 Widget  _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _texts()
      ],
    );
  }


  Widget _pagina2(BuildContext context) {

  return Stack(children: <Widget>[
    
    _colorFondo(),
    _button(context),

    
    ]); 
    
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1)
    );
  }

  Widget _imagenFondo() {
     return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage("assets/scroll-1.png"),
        fit: BoxFit.cover
      )
    );
  }

  Widget _texts() {
    final estilo = TextStyle(fontSize: 50,fontWeight: FontWeight.bold, color: Colors.white);

    return Container(
      
      child: Column(
        children: <Widget>[
          SizedBox(height: 80.0),
          Text("11º", style: estilo),
          SizedBox(height: 40.0),
          Text("Sábado", style: estilo),
          Expanded( child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70, color: Colors.white)

        ],
      ),
    );
  }

  Widget _button(context){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: RaisedButton(  
            shape: StadiumBorder(),
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text("Bienvenidos", style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          
          onPressed: (){
            Navigator.of(context).pushNamed("grid");
          }),

      ),
    );
  }
}