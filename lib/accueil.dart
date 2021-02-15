import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      'Accueil',
                      style: TextStyle(fontSize: 20, color: Colors.teal),
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

class Info {
  String images;
  String titles;
  String elementmenu;
  Info({this.images, this.titles, this.elementmenu});
}

List<Info> infos = [
  Info(images: 'images/CONETEXTE1.png', titles: 'CONTEXTE', elementmenu: ''),
  Info(images: 'images/cible.png', titles: 'CIBLE', elementmenu: ''),
  Info(images: 'images/OBJECTIFS.png', titles: 'OBJECTIFS', elementmenu: ''),
  Info(images: 'images/ENJEUX.png', titles: 'ENJEUX', elementmenu: ''),
];

class Showinfo extends StatelessWidget {
  final Info verif;
  const Showinfo({Key key, this.verif}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: 0.8,
            child: Image.asset(verif.images,width: 100,height: 100,
            ),
          ),
        ),
/*

        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(verif.images),

        ),
*/

        Text(
          verif.titles,
          style: TextStyle(fontSize: 12),
        ),
        Text(
          verif.elementmenu,
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(
          height: 10,

        )
      ],
    );
  }
}
