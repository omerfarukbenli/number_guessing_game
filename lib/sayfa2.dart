import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sayfa2 extends StatefulWidget {
  bool sonuc;
  Sayfa2({Key? key, required this.sonuc}) : super(key: key);

  @override
  _Sayfa2State createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sonuç Ekranı'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: widget.sonuc
                  ? Image.asset('assets/mutlu_resim.png')
                  : Image.asset('assets/uzgun_resim.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200, bottom: 200),
            child: Text(
              widget.sonuc ? 'Kazandınız' : 'Kaybettiniz',
              style: const TextStyle(fontSize: 40),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Tekrar Dene'),
          ),
        ],
      ),
    );
  }
}
