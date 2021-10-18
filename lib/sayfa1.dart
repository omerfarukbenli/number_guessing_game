import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/sayfa2.dart';

class Sayfa1 extends StatefulWidget {
  const Sayfa1({Key? key}) : super(key: key);

  @override
  _Sayfa1State createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  var tfTahmin = TextEditingController();
  int rasgeleSayi = 0;
  int kalanHak = 5;
  String yonlendirme = "";

  @override
  void initState() {
    super.initState();
    rasgeleSayi = Random().nextInt(101);
    print('Rasgele Sayı: $rasgeleSayi');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tahmi Oyunu'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 100),
            child: Text(
              'Kalan Hak:$kalanHak',
              style: const TextStyle(fontSize: 40, color: Colors.red),
            ),
          ),
          Text(
            'Yardım: $yonlendirme',
            style: const TextStyle(fontSize: 30, color: Colors.red),
          ),
          const SizedBox(height: 50),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(100, 100, 100, 200),
              child: TextField(
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  label: Text('Tahmin'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            ),
            onPressed: () {
              setState(() {
                kalanHak = kalanHak - 1;
              });

              int tahmin = int.parse(tfTahmin.text);

              if (tahmin == rasgeleSayi) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Sayfa2(sonuc: true)),
                );
                return;
              }
              if (tahmin > rasgeleSayi) {
                yonlendirme = "Tahmininizi azaltınız";
              }
              if (tahmin < rasgeleSayi) {
                yonlendirme = "Tahmininizi artırınız";
              }
              if (kalanHak == 0) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Sayfa2(sonuc: false)),
                );
              }
              tfTahmin.text = "";
            },
            child: const Text('Tahmin et'),
          ),
        ],
      ),
    );
  }
}
