import 'package:flutter/material.dart';
import 'package:hafta4/cla200.dart';
import 'package:hafta4/egea.dart';
import 'package:hafta4/i20.dart';
import 'package:hafta4/main.dart';
import 'package:hafta4/Leon.dart';
import 'package:hafta4/megane.dart';
import 'package:hafta4/passat.dart';
import 'package:hafta4/togg.dart';

class galeri extends StatefulWidget {
  //const galeri({Key? key}) : super(key: key);
  @override
  State<galeri> createState() => _galeriState();
}

class _galeriState extends State<galeri> {
  String adsoyad = '';
  String butce = '';

  @override
  Widget build(BuildContext context) {
    List<dynamic>? data = [];
    data = ModalRoute.of(context)?.settings.arguments as List?;
    adsoyad = data![0];
    butce = data[1];

    return Scaffold(
      appBar: AppBar(title: Text('galeri'),
      backgroundColor: Colors.indigo,),
      body: Center(
        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[





            Text('Hoş Geldiniz ' + adsoyad +' .', style: TextStyle(fontSize: 20.0)),
            Text('Bütçenizi ' + butce +' olarak belirlediniz.', style: TextStyle(fontSize: 20.0)),
            Text('Araçlarımız:', style: TextStyle(fontSize: 40.0)),







            Container(
              //color: Colors.black26,
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),


                title: Text('Seat Leon'),
                subtitle: Text('Yıl:2017 fiyat:649.500'),
                leading: Image.asset('images/seat.jpg'),        //      Icon(Icons.time_to_leave)
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => leon()),
                  );
                },
              ),

            ),

          Container(
            //color: Colors.transparent,
            child: ListTile(

              shape: RoundedRectangleBorder( //<-- SEE HERE
                side: BorderSide(width: 1),

              ),


              title: Text('Volkswagen Passat'),
              subtitle: Text('Yıl:2017 Fiyat: 989.000tl'),
              leading: Image.asset("images/passat.jpg"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => passat()),
                );
              },
            ),
          ),
            Container(
              //color: Colors.black26,
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),




                title: Text('TOGG'),
                subtitle: Text('Yıl:2023 Fiyat: 1.215.500tl'),
                leading: Image.asset('images/togg.jpg'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => toggcsedan()),
                  );
                },
              ),
            ),
            Container(
              //color: Colors.white24,
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),



                title: Text('Hyundai İ20'),
                subtitle: Text('Yıl:2021 Fiyat:621.000'),
                leading: Image.asset('images/i20.jpg'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => i20()),
                  );
                },
              ),
            ),
            Container(
              ///color: Colors.black26,
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),



                title: Text('Mercedes CLA200'),
                subtitle: Text('Yıl:2016 Fiyat: 1.36.500tl'),
                leading: Image.asset('images/cla200.jpg'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => mercedescla()),
                  );
                },
              ),
            ),
            Container(
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),




                title: Text('Fiat Egea'),
                subtitle: Text('Yıl:2019 Fiyat: 469.800tl'),
                leading: Image.asset('images/egea.jpg'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => fiategea()),
                  );
                },
              ),
            ),
            Container(
              //color: Colors.black26,
              child: ListTile(

                shape: RoundedRectangleBorder( //<-- SEE HERE
                  side: BorderSide(width: 1),

                ),



                title: Text('Renault Megane'),
                subtitle: Text('Yıl:2020 Fiyat: 776.800tl'),
                leading: Image.asset('images/megane.jpg'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => renaultmegane()),
                  );
                },
              ),
            ),





















         //   Padding(
          //    padding: const EdgeInsets.symmetric(vertical: 16.0),
          //    child: ElevatedButton(
           //    onPressed: () {
           //      Navigator.push(
           //         context,
           //         MaterialPageRoute(builder: (context) => leon()),
            //      );
                  

           //     },
            //    child: Text('Seat Leon'),

           //   ),

         //   ),




            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage(title: 'Anasayfa')),
                  );

                },
                child: Text('Anasayfaya Dön'),

              ),

            ),
            
            
            
            
            
            
            
            
            

          ],
        ),
      ),

    );
  }
}
