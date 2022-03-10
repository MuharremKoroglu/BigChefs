import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BigChefs());
}

class BigChefs extends StatelessWidget {
  const BigChefs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'BIG CHEFS',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Poppins',
            ),
          ),
          backgroundColor: Colors.red[900],
          leading: const Icon(
            Icons.favorite_border_sharp,
            size: 40,
          ),
        ),
        body: const SafeArea(
          child: YemekSayfasi(),
        ),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  List<String> corbaIsim = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuksuyu Çorbası',
    'Düğün Çorbası',
    'Yoğurtlu Çorba',
  ];
  List<String> yemekIsim = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık',
  ];
  List<String> tatliIsim = [
    'Kadayıf',
    'Fıstıklı Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma',
  ];
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    corbaNo = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('assets/images/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbaIsim[corbaNo - 1],
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              thickness: 3,
              height: 3,
              color: Colors.red[900],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    yemekNo = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('assets/images/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekIsim[yemekNo - 1],
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              thickness: 3,
              height: 3,
              color: Colors.red[900],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    tatliNo = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('assets/images/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatliIsim[tatliNo - 1],
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              thickness: 3,
              height: 3,
              color: Colors.red[900],
            ),
          ),
        ],
      ),
    );
  }
}
