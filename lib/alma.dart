import 'package:flutter/material.dart';
import 'package:hafta4/Leon.dart';
import 'package:hafta4/megane.dart';
import 'package:hafta4/egea.dart';
import 'package:hafta4/togg.dart';
import 'package:hafta4/passat.dart';
import 'package:hafta4/i20.dart';

class alma extends StatefulWidget {
  const alma({Key? key}) : super(key: key);

  @override
  State<alma> createState() => _almaState();
}

class _almaState extends State<alma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Satın Alma Ekranı'),backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[





              Text('Hayırlı Olsun Güle Güle Kullanın!',style: TextStyle(fontSize: 40.0),),
              Text('Kalan Bütçeniz: ' , style: TextStyle(fontSize: 20.0),),




            ],
          ),
        ),
      ),
    );
  }
}
