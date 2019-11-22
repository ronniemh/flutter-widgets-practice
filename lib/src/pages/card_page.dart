import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(height: 20.0),
            _cardTipo2(),
            SizedBox(height: 20.0),
            _cardTipo1(),
            SizedBox(height: 20.0),
            _cardTipo2(),
            SizedBox(height: 20.0),
            _cardTipo1(),
            SizedBox(height: 20.0),
            _cardTipo2(),
            SizedBox(height: 20.0),
            _cardTipo1(),
            SizedBox(height: 20.0),
            _cardTipo2(),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('First title for my project'),
          subtitle: Text('This is a subtitle for my project'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo2() {
  final card = Container(
    //clipBehavior: ,
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),
        //Image(
        //  image: NetworkImage(
        //      'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
        //),
        Container(padding: EdgeInsets.all(10.0), child: Text('Hi!'))
      ],
    ),
  );
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0))
        ]
        //color: Colors.red,
        ),
    child: ClipRRect(
      child: card,
      borderRadius: BorderRadius.circular(30.0),
    ),
  );
}
