import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hafta4/Galeri.dart';
import 'package:hafta4/Hakkında.dart';
import 'package:hafta4/Leon.dart';
import 'package:hafta4/alma.dart';
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

      '/leon': (context) => const leon(),
      '/galeri': (context) => galeri(),
      '/Hakkinda': (context) => Hakkinda(),
      '/passat' : (context) => passat(),
      '/i20' : (context) => i20(),
      '/fiategea' : (context) => fiategea(),
      '/renaultmegane' : (context) => renaultmegane(),
      '/toggcsedan' : (context) => toggcsedan(),
      'passat' : (context) => passat(),
      '/alma'  : (context) => alma(),





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
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A237E),



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
                style: TextStyle(color: Colors.indigo),
                onChanged: (text){adsoyadkaydet(text);} ,
                decoration: const InputDecoration(
                  hintStyle:TextStyle(color: Colors.indigo) ,
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
                style: TextStyle(color: Colors.indigo),
                onChanged: (text){butcekaydet(text);} ,
                decoration: const InputDecoration(
                  hintStyle:TextStyle(color: Colors.indigo) ,
                  hintText: 'Bütçenizi Giriniz',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1A237E),
                  shape: StadiumBorder(),
                    elevation: 10.0,
                    shadowColor: Colors.black

                ),

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
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1A237E),
                    //elevation: 10.0,
                    shape: StadiumBorder(),
                    shadowColor: Colors.black


                ),

                onPressed: () {
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
