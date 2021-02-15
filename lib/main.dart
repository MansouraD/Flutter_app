import 'package:flutter/material.dart';
import 'package:getech_app/apropos.dart';
import 'package:getech_app/candidature.dart';
import 'package:getech_app/contact.dart';
import 'package:getech_app/programme.dart';
import './accueil.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';





void main() {
  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.teal, Colors.deepOrange])),
              child: Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/logo.png'),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Accueil',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Accueil()));
              },
            ),
            Divider(
              color: Colors.teal,
            ),
            ListTile(
              title: Text(
                'A Propos',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Apropos()));
              },
            ),
            Divider(
              color: Colors.teal,
            ),
            ListTile(
              title: Text(
                'Programme',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Programme()));
              },
            ),
            Divider(
              color: Colors.teal,
            ),
            ListTile(
              title: Text(
                'Candidature',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Candidature()));
              },
            ),
            Divider(
              color: Colors.teal,
            ),
            ListTile(
              title: Text(
                'Contact',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contact()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('CFP GETECH'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'BIENVENUE DANS CFP GETECH',
                      style: TextStyle(fontSize: 20, color: Colors.teal),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: Carousel(boxFit: BoxFit.cover, images: [
              AssetImage('images/femmes2.jpeg'),
              AssetImage('images/GETECH.png'),
              AssetImage('images/entrepreneur.jpeg'),
              AssetImage('images/entrepreneur.jpg'),
              AssetImage('images/enfantVillageois.jpg'),
            ]),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'COMMUNE DE TATTAGUINE EN MOUVEMENT',
                      style: TextStyle(fontSize: 18, color: Colors.teal),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                shrinkWrap: true,
                primary: false,
                itemCount: infos.length,
                itemBuilder: (BuildContext context, int val) {
                  return Showinfo(
                    verif: infos[val],
                  );
                },
                staggeredTileBuilder: (int index) {
                  return StaggeredTile.fit(2);
                }),
          ),
        ],
      ),
    );
  }
}
