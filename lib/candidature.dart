import 'package:flutter/material.dart';

class Candidature extends StatefulWidget {
  @override
  _CandidatureState createState() => _CandidatureState();
}

class _CandidatureState extends State<Candidature> {
  String value = '';
  String nom = '';
  String prenom = '';
  String adresse = '';
  String email = '';
  String telephone = '';
  String formation = '';
  String niveau = '';
  final formKey = new GlobalKey<FormState>();

  validationform() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      debugPrint('$nom');
      debugPrint('$prenom');
      debugPrint('$adresse');
      debugPrint('$email');
      debugPrint('$telephone');
      debugPrint('$formation');
      debugPrint('$niveau');
      formKey.currentState.reset();
    } else {
      debugPrint('Error......');
    }
  }

  /*void submit(String a){
    setState(() {
      value = 'Candidature envoyée $a';
    });
  }*/

  void affichage(String b) {
    setState(() {
      value = 'Bienvenue  $b';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Candidater',
                style: TextStyle(fontSize: 22, color: Colors.teal),
                textAlign: TextAlign.center,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nom',
                  hintText: 'Entrez votre nom',
                  icon: Icon(
                    Icons.person,
                    color: Colors.teal,
                    size: 25,
                  ),
                ),
                validator: (val) =>
                    val.length == 0 ? "validez votre nom" : null,
                onSaved: (val) => nom = val,
                keyboardType: TextInputType.text,
                autocorrect: true,
                autofocus: true,
                onChanged: affichage,
                //onSubmitted: submit,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Prenom',
                  hintText: 'Entrez votre prenom',
                  icon: Icon(
                    Icons.person,
                    color: Colors.teal,
                    size: 25,
                  ),
                ),
                validator: (val) =>
                    val.length == 0 ? "validez votre nom" : null,
                onSaved: (val) => prenom = val,
                keyboardType: TextInputType.text,
                autocorrect: true,
                autofocus: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Entrez votre email',
                  icon: Icon(
                    Icons.mail,
                    color: Colors.teal,
                    size: 25,
                  ),
                ),
                validator: (val) =>
                    val.length == 0 ? "validez votre nom" : null,
                onSaved: (val) => email = val,
                keyboardType: TextInputType.text,
                autocorrect: true,
                autofocus: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Telephone',
                  hintText: 'Entrez votre telephone',
                  icon: Icon(
                    Icons.phone,
                    color: Colors.teal,
                    size: 25,
                  ),
                ),
                validator: (val) =>
                    val.length == 0 ? "validez votre nom" : null,
                onSaved: (val) => telephone = val,
                keyboardType: TextInputType.text,
                autocorrect: true,
                autofocus: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Choisissez une formation',
                  hintText: 'Entrez votre nom',
                  icon: Icon(
                    Icons.festival,
                    color: Colors.teal,
                    size: 25,
                  ),
                ),
                validator: (val) =>
                    val.length == 0 ? "Choississez une formation" : null,
                onSaved: (val) => formation = val,
                keyboardType: TextInputType.text,
                autocorrect: true,
                autofocus: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Niveau détude',
                  hintText: 'Entrez votre niveau',
                  icon: Icon(
                    Icons.grade,
                    color: Colors.teal,
                    size: 25,
                  ),
                ),
                validator: (val) =>
                    val.length == 0 ? "validez votre niveau d'etude" : null,
                onSaved: (val) => niveau = val,
                keyboardType: TextInputType.text,
                autocorrect: true,
                autofocus: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Adresse',
                  hintText: 'Entrez votre adresse',
                  icon: Icon(
                    Icons.location_on_sharp,
                    color: Colors.teal,
                    size: 25,
                  ),
                ),
                validator: (val) =>
                    val.length == 0 ? "validez votre adresse" : null,
                onSaved: (val) => adresse = val,
                keyboardType: TextInputType.text,
                autocorrect: true,
                autofocus: true,
              ),
              RaisedButton(
                child: Text(
                  'Validation',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                onPressed: validationform,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
