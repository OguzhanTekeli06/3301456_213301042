import 'package:flutter/material.dart';

class mercedescla extends StatefulWidget {
  const mercedescla({Key? key}) : super(key: key);

  @override
  State<mercedescla> createState() => _mercedesclaState();
}

class _mercedesclaState extends State<mercedescla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercedes CLA200'),backgroundColor: Colors.indigo,
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
                  child: Image.asset('images/cla200.jpg')
              ),


              Text('Fiyat: 1.36.500tl'),
              Text('Model: CLA AMG200'),
              Text('Renk: Beyaz'),
              Text('Yıl: 2016'),
              Text('Km: 84.100'),
              Text('Motor Gücü: 156hp'),
              Text('Motor Hacmi: 1595cc'),




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
