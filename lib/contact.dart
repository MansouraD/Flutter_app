import 'package:flutter/material.dart';


class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,title: Text('Nous Contactez',),),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(10.0),
            child:Card(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  ListTile(
                    title: Text('NOUS CONTACTEZ',style: TextStyle(fontSize: 20),),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color:Colors.teal,
                      size: 30,
                    ),
                    title: Text(
                      'web.facebook.com/cfpgetech.tattaguine/',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),

                  ),
                  Divider(height: 16,color: Colors.black,),
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      color:Colors.teal,
                      size: 30,
                    ),
                    title: Text(
                      'cfg.getech@gmail.com',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),

                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      color:Colors.teal,
                      size: 30,
                    ),
                    title: Text(
                      '+221 (77 041 93 61)',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),

                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_sharp,
                      color:Colors.teal,
                      size: 30,
                    ),
                    title: Text(
                      'Tattaguine EScale',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),

                  ),
                  ListTile(
                    leading: Icon(
                      Icons.vignette,
                      color:Colors.teal,
                      size: 30,
                    ),
                    title: Text(
                      'www.youtube.com/channel/UCK6Et1Dtyqi5uPUQXpCtc6g?view_as=subscriber',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),

                  ),
                ],
              ),
            ),
          )
        ],

      ),

    );
  }
}
