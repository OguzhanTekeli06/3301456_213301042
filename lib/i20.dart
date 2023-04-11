import 'package:flutter/material.dart';

class i20 extends StatefulWidget {
  const i20({Key? key}) : super(key: key);

  @override
  State<i20> createState() => _i20State();
}

class _i20State extends State<i20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hyundai İ20'),backgroundColor: Colors.indigo,
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
                  child: Image.asset('images/i20.jpg')
              ),

              Text('Fiyat: 675.000tl'),
              Text('Model: 1.4 MDI Style'),
              Text('Renk: Beyaz'),
              Text('Yıl: 2021'),
              Text('Km: 21.000'),
              Text('Motor Gücü: 100hp'),
              Text('Motor Hacmi: 1368cc'),





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
