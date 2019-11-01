import 'package:flutter/material.dart';

class TampilSyarat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Syarat Puasa'),
      ),

      body: PageView(
        children: <Widget>[
          syaratItem('Islam', 'Seseorang yang hendak berpuasa haruslah beragama Islam'),
          syaratItem('Baligh', 'Hendaklah yang berpuasa harus berumur baligh'),
          syaratItem('berakal', 'Seseorang muslim harus punya akal dan tidak sah jika yang puasa adalah orang gila'),
          syaratItem('Sehat', 'tidak dalam keadaan sakit'),
          syaratItem('Menetap atau tinggal ditempat', 'tidak dalam keadaan bersafar atau berpergian jauh.'),
          syaratItem('Suci dari haidh dan nifas', 'Dari Mu’adzah dia berkata, Saya bertanya kepada Aisyah seraya berkata, Kenapa gerangan wanita yang haid mengqadha puasa dan tidak mengqadha shalat? Maka Aisyah menjawab, Apakah kamu dari golongan Haruriyah?  Aku menjawab, Aku bukan Haruriyah, akan tetapi aku hanya bertanya. Dia menjawab, Kami dahulu juga mengalami haid, maka kami diperintahkan untuk mengqadha puasa dan tidak diperintahkan untuk mengqadha shalat. Berdasarkan kesepakatan para ulama pula, wanita yang dalam keadaan haidh dan nifas tidak wajib puasa dan wajib mengqodho puasanya.'),
          syaratItem('Mengetahui Bulan Ramadhan', 'Syarat wajib puasa berikut berlaku untuk ibadah puasa yang dilakukan saat bulan Ramadan. Jika kamu sudah melihat hilal, maka kamu diwajibkan untuk melakukan ibadah puasa. Namun mungkin kemampuan untuk melihat hilal tidak semua orang bisa melakukannya karena kendala alat. Maka dari itu, ada sidang isbat yang biasanya dilakukan oleh Kementrian Agama atau organisasi Islam lainnya.'),
          syaratItem('Berniat', 'Niat merupakan syarat sah puasa karena puasa adalah ibadah sedangkan ibadah tidaklah sah kecuali dengan niat sebagaimana ibadah yang lain.'),
        ],
      ),
    );
  }
}

Widget syaratItem(String judul, String detail) {
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