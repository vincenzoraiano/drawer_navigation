import 'package:flutter/material.dart';
import 'main.dart';

class main_drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        //padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Color(0xffFFA000),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                    ),
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 40.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/2724664/pexels-photo-2724664.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Vincenzo Raiano',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text(
                    'Deimers@gmail.com',
                    style: TextStyle(
                      color: Colors.black54,
                      letterSpacing: 2.0,
                    ),
                  ),
                  // list tile mi consete di creare una label
                  ListTile(
                    leading: Icon(Icons.person),
                    dense: true,
                    title: Text('Profilo'),
                    subtitle: Text(
                      'Profilo Utente',
                      style: TextStyle(letterSpacing: 3.0),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('333-6754323'),
                    subtitle: Text(
                      'Numero di telefono',
                      style: TextStyle(letterSpacing: 3.0),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.money_off),
                    subtitle: Text('Subtile'),
                    title: Text('Metodo pagamento'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
