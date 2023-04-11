import 'package:flutter/material.dart';

class fiategea extends StatefulWidget {
  const fiategea({Key? key}) : super(key: key);

  @override
  State<fiategea> createState() => _fiategeaState();
}

class _fiategeaState extends State<fiategea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fiat Egea'),backgroundColor: Colors.indigo,
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
                  child: Image.asset('images/egea.jpg')
              ),

              Text('Fiyat: 469.800tl'),
              Text('Model: 1.3 Multijet Easy'),
              Text('Renk: Beyaz'),
              Text('Yıl: 2019'),
              Text('Km: 129.700'),
              Text('Motor Gücü: 95hp'),
              Text('Motor Hacmi: 1248cc'),

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
