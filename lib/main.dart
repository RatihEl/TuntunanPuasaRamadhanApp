import 'package:flutter/material.dart';
import 'TampilSyarat.dart';
import 'TampilPengertian.dart';
import 'TampilSunnah.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
          canvasColor: Colors.blueAccent,
          appBarTheme: AppBarTheme(color: Colors.blue, elevation: 0)),
      home: HomeUtama(),
    );
  }
}

class HomeUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.info_outline)
                , onPressed: () {

                  AlertDialog(
                    title: Text('Tentang Saya'),
                    content: new Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      ],
                    ),
                    actions: <Widget>[
                      new FlatButton(
                          onPressed: (){
                            Navigator.of(context);
                          },
                          child: const Text('Close'))
                    ],
                  );
                }),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),

        body: Column(
          children: <Widget>[
            Text('Tuntunan Puasa',style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
            ListView(
              children: <Widget>[
                _itemMenuUtama(context, "Syarat Puasa", TampilSyarat(), backgroundImage('https://cdn2.tstatic.net/jabar/foto/bank/images/kata-kata-ucapan-tahun-baru-islam.jpg')),
                _itemMenuUtama(context, "Pengertian Puasa", TampilPengertian(), backgroundImage('https://cdn2.tstatic.net/banjarmasin/foto/bank/images/takjil-berupa-kurma-dan-teh_20170531_191717.jpg')),
                _itemMenuUtama(context, "Sunnah Puasa", TampilSunnah(), backgroundImage(''))
              ],
            )
          ],
        )
    );
  }

  Widget TampilPengertian() {}
}

Widget _itemMenuUtama (BuildContext context, String judul, Widget tampilan, Widget background){
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        child: Card(
          elevation: 1.0,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Stack(
            children: <Widget>[
              background
            ],
          ),
        ),
      )
  );
}


void openNewSreen(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}

Widget backgroundImage(String imageURL) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken),
            image: NetworkImage(imageURL))),
  );
}
