import 'package:flutter/material.dart';
import 'package:hafta4/Galeri.dart';
import 'package:hafta4/main.dart';

class leon extends StatefulWidget {
  const leon({Key? key}) : super(key: key);

  @override
  State<leon> createState() => _leonState();
}

class _leonState extends State<leon> {
  int fiyat = 550000;


  //void alma(){}







  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        title: Text('Seat Leon'),backgroundColor: Colors.indigo,
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
                child: Image.asset('images/seat.jpg')

              ),



              Text('Fiyat: 649.500tl'),
              Text('Model: 1.6TDI Style'),
              Text('Renk: Beyaz'),
              Text('Yıl: 2017'),
              Text('Km: 145.000'),
              Text('Motor Gücü: 115hp'),
              Text('Motor Hacmi: 1598cc'),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {

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
