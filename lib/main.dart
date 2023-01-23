import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController angkaController1 = new TextEditingController();
  TextEditingController angkaController2 = new TextEditingController();
  TextEditingController hasilController = new TextEditingController();

  late int nAngka1;
  late int nAngka2;
  late int nHasil;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator - Sederhana"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
                controller: angkaController1,
                decoration: InputDecoration(hintText: 'Masukkan angka pertama'),
),
            TextFormField(
                controller: angkaController2,
                decoration: InputDecoration(hintText: 'Masukkan angka kedua'),               
),
            Padding(padding: EdgeInsets.only(),
              child: ElevatedButton(
              onPressed: () {
              setState(() {
                  nAngka1 = int.parse(angkaController1.text);
                  nAngka2 = int.parse(angkaController2.text);

                  nHasil = nAngka1 * nAngka2;
                  print(nHasil);
                  hasilController.text = nHasil.toString();
            });
           },
         child: Text("HITUNG")),
),
            
            TextFormField(
                controller: hasilController,
                decoration: InputDecoration(hintText: 'Hasil'),
),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),    
    );
  }
}

