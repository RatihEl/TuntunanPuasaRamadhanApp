import 'package:flutter/material.dart';

class TampilPenegertian extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Penegertian Puasa'),
      ),

      body: PageView(
        children: <Widget>[
          sunnahItem('Pengertian Puasa', 'menurut syariat Islam adalah suatu amalan ibadah yang dilakukan dengan menahan diri dari segala sesuatu seperti makan, minum, perbuatan buruk maupun dari yang membatalkan puasa mulai dari terbitnya fajar hingga terbenamnya matahari yang disertai dengan niat karena Allah SWT, dengan syarat dan rukun tertentu. '),
        ],
      ),
    );
  }
}

Widget sunnahItem(String judul, String detail) {
  return ListView(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          judul,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          textAlign: TextAlign.right,
        ),
      ),
      SizedBox(
        height: 40.0,
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          detail,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0, height: 0.5),
          textAlign: TextAlign.justify,
        ),
      ),
    ],
  );
}// TODO Implement this library.