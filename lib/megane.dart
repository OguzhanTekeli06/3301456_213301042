import 'package:flutter/material.dart';

class renaultmegane extends StatefulWidget {
  const renaultmegane({Key? key}) : super(key: key);

  @override
  State<renaultmegane> createState() => _renaultmeganeState();
}

class _renaultmeganeState extends State<renaultmegane> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Renault Megane'),backgroundColor: Colors.indigo,
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
                  child: Image.asset('images/megane.jpg')

              ),

              Text('Fiyat: 776.800tl'),
              Text('Model: 1.5 Blue TDI Touch'),
              Text('Renk: Beyaz'),
              Text('Yıl: 2020'),
              Text('Km: 103.211'),
              Text('Motor Gücü: 115hp'),
              Text('Motor Hacmi: 1461cc'),



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
