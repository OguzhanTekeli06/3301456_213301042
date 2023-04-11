import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hafta4/Galeri.dart';
import 'package:hafta4/Hakkında.dart';
import 'package:hafta4/Leon.dart';
import 'package:hafta4/egea.dart';
import 'package:hafta4/i20.dart';
import 'package:hafta4/megane.dart';

import 'dart:convert';

import 'package:hafta4/passat.dart';
import 'package:hafta4/togg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ouz Autoshop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    initialRoute: '/',
    routes: {
      // '/': (context) => MyHomePage(title:"Anasayfa",),
      '/leon': (context) => const leon(),
      '/galeri': (context) => galeri(),
      '/Hakkinda': (context) => Hakkinda(),
      '/passat' : (context) => passat(),
      '/i20' : (context) => i20(),
      '/fiategea' : (context) => fiategea(),
      '/renaultmegane' : (context) => renaultmegane(),
      '/toggcsedan' : (context) => toggcsedan(),
      'passat' : (context) => passat(),





    },





    home: const MyHomePage(title: 'Anasayfa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String adsoyad = '';
  String butce = '';


void adsoyadkaydet(String text){
    setState(() {
      adsoyad=text;
    });
}

  void butcekaydet(String text){
    setState(() {
      butce=text;
    });
  }

  void kontrol(){
    var data = [];
    data.add(adsoyad);
    data.add(butce);

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => galeri(),

          settings: RouteSettings(
            arguments: data,
          ),
        ));
  }






  @override
  Widget build(BuildContext context) {







    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,



        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Adınız ve Soyadınız:',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (text){adsoyadkaydet(text);} ,
                decoration: const InputDecoration(
                  hintText: 'Adınızı ve Soyadınızı Giriniz',
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
            Text(
              'Bütçeniz Belirleyin:',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (text){butcekaydet(text);} ,
                decoration: const InputDecoration(
                  hintText: 'Bütçenizi Giriniz',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => galeri()),
                  );
                  kontrol();


                  },
                child: Text('Galeriye Gözat',),

              ),

            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Hakkinda()),
              );
            },
                child: Text("Hakkında")),
          )
          ],
        ),

      ),
    );
  }
}
