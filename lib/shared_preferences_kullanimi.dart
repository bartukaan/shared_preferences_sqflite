import 'package:flutter/material.dart';

class SharedPreferencesKullanimi extends StatefulWidget {
  @override
  _SharedPreferencesKullanimiState createState() =>
      _SharedPreferencesKullanimiState();
}

class _SharedPreferencesKullanimiState
    extends State<SharedPreferencesKullanimi> {
  String isim;
  int id;
  bool cinsiyet;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Pref Kullanımı"),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  key: formKey,
                  onSaved: (deger) => isim = deger,
                  decoration: InputDecoration(
                    labelText: "Isminizi giriniz",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  key: formKey,
                  onSaved: (deger) => id = int.parse(deger),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "ID giriniz",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RadioListTile(
                  value: true,
                  groupValue: cinsiyet,
                  onChanged: (secildi) {
                    setState(
                      () {
                        cinsiyet = secildi;
                      },
                    );
                  },
                  title: Text("Erkek"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RadioListTile(
                  value: false,
                  groupValue: cinsiyet,
                  onChanged: (secildi) {
                    setState(
                          () {
                        cinsiyet = secildi;
                      },
                    );
                  },
                  title: Text("Kadın"),
                ),
              ),
              Row(
                children: [
                  RaisedButton(onPressed: (){},),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
