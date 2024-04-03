import 'package:data_kontakkk/screen/hal_register.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Data Kontak",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Data Kontak"),
          centerTitle: true,
        ),
        body: const FormKontak()
      ),
    );
  }
}