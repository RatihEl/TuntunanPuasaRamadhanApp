import 'package:flutter/material.dart';

class TampilSunnah extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sunnah Puasa'),
      ),

      body: PageView(
        children: <Widget>[
          sunnahItem('Sahur', 'walaupun dengan seteguk air. Masuk waktu sahur mulai pertengahan malam. Rasulullah saw bersabda:“Bersahurlah karena sesungguhnya dalam sahur itu ada barakah.” (HR. Bukhari dan Muslim)')
          sunnahItem('1.Mengakhirkan Sahur', 'Disunnahkan bagi orang yang hendak berpuasa untuk makan sahur. Al Khottobi mengatakan bahwa makan sahur merupakan tanda bahwa agama Islam selalu mendatangkan kemudahan dan tidak mempersulit'),
          sunnahItem('2.Menyegerakan berbuka', 'Nabi kita shallallahu ‘alaihi wa sallam biasa berbuka puasa sebelum menunaikan shalat maghrib dan bukanlah menunggu hingga shalat maghrib selesai dikerjakan.'),
          sunnahItem('3.Berbuka dengan kurma jika mudah diperoleh atau dengan air.', 'Dalilnya adalah hadits yang disebutkan di atas dari Anas. Hadits tersebut menunjukkan bahwa ketika berbuka disunnahkan pula untuk berbuka dengan kurma atau dengan air. Jika tidak mendapati kurma, bisa digantikan dengan makan yang manis-manis. Di antara ulama ada yang menjelaskan bahwa dengan makan yang manis-manis (semacam kurma) ketika berbuka itu akan memulihkan kekuatan, sedangkan meminum air akan menyucikan.'),
          sunnahItem('4.Berdo’a ketika berbuka', 'Ada tiga orang yang do’anya tidak ditolak : (1) Pemimpin yang adil, (2) Orang yang berpuasa ketika dia berbuka, (3) Do’a orang yang terdzolimi. dan Ketika berbuka adalah waktu terkabulnya do’a karena ketika itu orang yang berpuasa telah menyelesaikan ibadahnya dalam keadaan tunduk dan merendahkan diri.'),
          sunnahItem('5.Memberi makan pada orang yang berbuka.', 'Siapa memberi makan orang yang berpuasa, maka baginya pahala seperti orang yang berpuasa tersebut, tanpa mengurangi pahala orang yang berpuasa itu sedikit pun juga.'),
          sunnahItem('6.Lebih banyak berderma dan beribadah di bulan Ramadhan', 'Ibnul Qayyim rahimahullah mengatakan, “Nabi shallallahu ‘alaihi wa sallam lebih banyak lagi melakukan kebaikan di bulan Ramadhan. Beliau memperbanyak sedekah, berbuat baik, membaca Al Qur’an, shalat, dzikir dan i’tikaf.”'),
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