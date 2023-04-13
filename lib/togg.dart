import 'package:flutter/material.dart';

import 'alma.dart';

class toggcsedan extends StatefulWidget {
  const toggcsedan({Key? key}) : super(key: key);

  @override
  State<toggcsedan> createState() => _toggcsedanState();
}

class _toggcsedanState extends State<toggcsedan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TOGG'),backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                  width: 400,
                  height: 400,
                  child: Image.asset('images/togg.jpg')

              ),


              Text('Fiyat: 1.215.500tl'),
              Text('Model: C-Suv'),
              Text('Renk: Gemlik'),
              Text('Yıl: 2023'),
              Text('Km: 000.000'),
              Text('Motor Gücü: 150kW'),



              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1A237E),
                      shape: StadiumBorder(),

                      shadowColor: Colors.black

                  ),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => alma()),
                    );

                  },
                  child: Text('AL'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
