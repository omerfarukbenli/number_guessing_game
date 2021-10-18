import 'package:flutter/material.dart';
import 'package:flutter_application_6/sayfa1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100, bottom: 200),
            child: Text(
              'Tahmin Oyunu',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Image.asset('assets/zar_resim.png'),
          ),
          const SizedBox(height: 200),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sayfa1()),
              );
            },
            child: const Text('Oyuna Başla'),
          ),
        ],
      ),
    );
  }
}
