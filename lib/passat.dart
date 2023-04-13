import 'package:flutter/material.dart';

import 'alma.dart';

class passat extends StatefulWidget {
  const passat({Key? key}) : super(key: key);

  @override
  State<passat> createState() => _passatState();
}

class _passatState extends State<passat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vw Passat'),backgroundColor: Colors.indigo,
      ),
      body: Center(



        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                width: 400,
                height: 400,
                child: Image.asset("images/passat.jpg"),
              ),


              Text('Fiyat: 989.000tl'),
              Text('Model: 1.6TDI BlueMotion Comfortline'),
              Text('Renk: Beyaz'),
              Text('Yıl: 2017'),
              Text('Km: 127.000'),
              Text('Motor Gücü: 120hp'),
              Text('Motor Hacmi: 1598cc'),


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


